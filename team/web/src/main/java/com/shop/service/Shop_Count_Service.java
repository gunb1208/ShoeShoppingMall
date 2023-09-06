package com.shop.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.modelmapper.ModelMapper;

import com.shop.mapper.MybatisManager;
import com.shop.util.MapperUtil;

public enum Shop_Count_Service {

	INSTANCE;
	

	private SqlSession session;

	
	public int Count_order(Map<String, String> map) {
		session = MybatisManager.getInstance().openSession();
		int num =session.selectOne("shop_Count.order_count",map) == null ? 1 : session.selectOne("shop_Count.order_count",map);
		
		return num;
	}
	
	
	public int Count_review(Map<String, String> map) {
		session = MybatisManager.getInstance().openSession();
		int num = session.selectOne("shop_Count.review_count",map)==null ? 1 : session.selectOne("shop_Count.review_count",map);
		return num;
	}
	
	public int Count_p_board(Map<String, String> map) {
		session = MybatisManager.getInstance().openSession();
		int num = session.selectOne("shop_Count.p_board_count",map)==null ? 1 : session.selectOne("shop_Count.p_board_count",map);
		return num;
	}
	

	
	
	public int Count_board() {
		session = MybatisManager.getInstance().openSession();
		int num = session.selectOne("shop_Count.board_count")==null ? 1 : session.selectOne("shop_Count.board_count");
		System.out.println("count값 체크" + num + 1);
		return num;
	}
	
	public int Count_product() {
		session = MybatisManager.getInstance().openSession();
		int num = session.selectOne("shop_Count.product_count") == null ? 1 : session.selectOne("shop_Count.product_count");
		return num;
	}
	
	public int Count_admin_board() {
		session = MybatisManager.getInstance().openSession();
		int num = session.selectOne("shop_Count.admin_board_count")==null ? 1 : session.selectOne("shop_Count.admin_board_count");
		return num;
	}
	
	
	
}
