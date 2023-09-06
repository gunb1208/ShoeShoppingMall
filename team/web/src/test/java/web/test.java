package web;

import static org.junit.Assert.*;

import java.sql.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.modelmapper.ModelMapper;

import com.shop.domain.Shop_Write_BoardVO;
import com.shop.domain.Shop_Write_ProductVO;
import com.shop.domain.Shop_Write_ReviewVO;
import com.shop.dto.Shop_User_InfoDTO;
import com.shop.dto.Shop_Write_CartDTO;
import com.shop.dto.Shop_Write_OrderDTO;
import com.shop.dto.Shop_Write_Order_InfoDTO;
import com.shop.dto.Shop_Write_P_BoardDTO;
import com.shop.dto.Shop_Write_ProductDTO;
import com.shop.dto.Shop_Write_ReviewDTO;
import com.shop.mapper.MybatisManager;
import com.shop.service.Shop_Count_Service;
import com.shop.service.Shop_Delete_Service;
import com.shop.service.Shop_Insert_Service;
import com.shop.service.Shop_Select_Service;
import com.shop.service.Shop_Update_Service;
import com.shop.util.MapperUtil;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class test {

	Shop_Delete_Service shop_Delete_Service = Shop_Delete_Service.INSTANCE;
	Shop_Insert_Service shop_Insert_Service = Shop_Insert_Service.INSTANCE;
	Shop_Update_Service shop_Update_Service = Shop_Update_Service.INSTANCE;
	Shop_Select_Service shop_Select_Service = Shop_Select_Service.INSTANCE;
	Shop_Count_Service shop_Count_Service = Shop_Count_Service.INSTANCE;
	
	@Test
	public void register_test() {  //회원가입 및 쿠폰 증정 테스트
		
		
		Shop_User_InfoDTO shop_User_InfoDTO = Shop_User_InfoDTO.builder()
				.user_id("mingtu23")
				.pw("1234")
				.nickname("민규23")
				.name("민규32")
				.email("dhaos23@naver.com")
				.address("양산시")
				.phone("123-12432-123")
				.point(0) //고정 값
				.build();
		
		shop_Insert_Service.Register(shop_User_InfoDTO);
		
	}
	
//	@Test
//	public void order() {
//		
//		for(int i = 100; i <205; i++) {
//		Shop_Write_OrderDTO shop_Write_OrderDTO = Shop_Write_OrderDTO.builder()
//				.order_num(shop_Count_Service.Count_order()) 
//				.user_id("jenny")	//req.getparameter
//				.product_name("나이키 에어포스")
//				.product_num(1)
//				.product_opt("265")
//				.result("처리중 서비스 테스트" + i) //조건에 따른 값
//				.build();
//
//		Shop_Write_Order_InfoDTO shop_Write_Order_InfoDTO = Shop_Write_Order_InfoDTO.builder()
//				.product_num(shop_Write_OrderDTO.getProduct_num())
//				.order_num(shop_Write_OrderDTO.getOrder_num())
//				.amount(1)
//				.result(shop_Write_OrderDTO.getResult())
//				.name("김제니")
//				.address("양산시")
//				.build();
//		
//		shop_Insert_Service.Write_order(shop_Write_OrderDTO, shop_Write_Order_InfoDTO);
//		
//		}
//	}
	
//	@Test
//	public void review() {
//		
//		Shop_Write_ReviewDTO shop_Write_ReviewDTO = Shop_Write_ReviewDTO.builder()
//				.articleNo(shop_Count_Service.Count_review())
//				.user_id("jong")
//				.product_num(1)
//				.content("상품이좋아여2")
//				.imagePath("이미지 없음")
//				.build();
//		
//		
//		shop_Insert_Service.Write_review(shop_Write_ReviewDTO);
//		
//		
//	}
	
	
//	@Test
//	public void p_board() {
//		
//		Shop_Write_P_BoardDTO shop_Write_P_BoardDTO = Shop_Write_P_BoardDTO.builder()
//				.articleNo(shop_Count_Service.Count_p_board())
//				.user_id("jong")
//				.product_num(1)
//				.qna_title("좋나여")
//				.qna_content("ㅁㄴㅇㅁㄴㅇ")
//				.qna_reply("답변없음")
//				.rep_check("답변 전")
//				.imagePath("이미지 없음")
//				.build();
//		
//		
//		shop_Insert_Service.Write_p_board(shop_Write_P_BoardDTO);
//		
//	}
	
	@Test
	public void Select_Product() {  //상품 정보 가져오기 

		SqlSession session  = MybatisManager.getInstance().openSession();
		 
		Map<String, String> map = new HashMap();
		map.put("product_brand", "아디다스");
		
		List<Shop_Write_ProductVO> vo = session.selectList("shop_Select.select_product", map);
		System.out.println(vo);
	}
	
	@Test
	public void Select_Search_Product() {  //상품 검색 정보 가져오기 

		SqlSession session  = MybatisManager.getInstance().openSession();
		
		String keyword = "다스1";
		
		List<Shop_Write_ProductVO> vo = session.selectList("shop_Select.select_search_product", keyword);
		System.out.println(vo);
		
	}
	
	// ==================================================================================
	
	@Test
	public void write_board() { // 문의사항 입력
		
		SqlSession session  = MybatisManager.getInstance().openSession();
		
		Shop_Write_BoardVO vo = Shop_Write_BoardVO.builder()
								.qna_num(3)
								.user_id("test12345")
								.qna_title("test1_title3")
								.qna_content("test1_content3")
								.qna_reply("test1_reply3")
								.rep_check("no")
								.build();
		
		
		int result = session.insert("shop_Insert.write_board", vo);
		System.out.println(result);
		
		session.commit();
	}
	
	@Test
	public void update_board() { // 문의사항 수정
		
		SqlSession session  = MybatisManager.getInstance().openSession();
		
		Shop_Write_BoardVO vo = Shop_Write_BoardVO.builder()
								.qna_num(2)
								.qna_title("test1_title2_update")
								.qna_content("test1_content2_update")
								.build();
		
		int result = session.update("shop_Update.update_board", vo);
		System.out.println(result);
		
		session.commit();
	}
	
	@Test
	public void delete_board() { // 문의사항 삭제
		
		SqlSession session  = MybatisManager.getInstance().openSession();
		
		Shop_Write_BoardVO vo = Shop_Write_BoardVO.builder()
								.qna_num(2)
								.build();
		
		int result = session.delete("shop_Delete.delete_board", vo);
		System.out.println(result);
		
		session.commit();
	}
	
	@Test
	public void select_board_one() { // 문의사항 조회
		
		SqlSession session  = MybatisManager.getInstance().openSession();
		
		Map<String, String> map = new HashMap();
		map.put("qna_num", "1");
		
		Shop_Write_BoardVO vo = session.selectOne("shop_Select.select_board_one", map);
		System.out.println(vo);
		
	}
	
	
	@Test
	public void select_board() { // 문의사항 전체목록
		
		SqlSession session  = MybatisManager.getInstance().openSession();
		
		Map<String, String> map = new HashMap();
		map.put("section", "1");
		map.put("pageNum", "1");
		
		List<Shop_Write_BoardVO> vo = session.selectList("shop_Select.select_board", map);
		System.out.println(vo);
		
	}
	
	
	

}
