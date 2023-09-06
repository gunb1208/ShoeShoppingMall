package com.shop.inquiry.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.dto.Shop_Write_P_BoardDTO;
import com.shop.service.Shop_Count_Service;
import com.shop.service.Shop_Insert_Service;

import lombok.extern.log4j.Log4j2;
@Log4j2
@WebServlet("/inquiryInsert.do")
public class InquiryInsertController extends HttpServlet {
	
	Shop_Insert_Service shop_Insert_Service = Shop_Insert_Service.INSTANCE;
	Shop_Count_Service shop_Count_Service = Shop_Count_Service.INSTANCE;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandler(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doHandler(req, resp);
	}
	
	protected void doHandler(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	

		
		System.out.println(req.getParameter("user_id"));
		System.out.println(req.getParameter("product_num"));
		System.out.println(req.getParameter("qna_title"));
		System.out.println(req.getParameter("imagePath"));
		
		
		resp.setContentType("text/html;charset=utf-8");
		PrintWriter out = resp.getWriter();
		
		Map<String, String> map = new HashMap<>();
		
		Shop_Write_P_BoardDTO shop_Write_P_BoardDTO = Shop_Write_P_BoardDTO.builder()
				.articleNo(shop_Count_Service.Count_p_board(map))
				.user_id(req.getParameter("user_id"))
				.product_num(Integer.parseInt(req.getParameter("product_num")))
				.qna_title(req.getParameter("qna_title"))
				.qna_content("데이터베이스 수정")
				.qna_reply("답변 준비중")
				.rep_check("답변 준비중")
				.imagePath(req.getParameter("imagePath"))
				.build();
		
		shop_Insert_Service.Write_p_board(shop_Write_P_BoardDTO);
		
		
		String data = 
				"<div class='mt-3'>"
    	+"<input type='text' value='" +shop_Write_P_BoardDTO.getArticleNo()  +"'  class='review_text' style='font-size: 0.8em; color: gray;' readonly>"
        +"<input type='text' value='" +shop_Write_P_BoardDTO.getUser_id()  +"'class='review_text' style='font-size: 0.8em; color: gray;' readonly>"
        +"<input type='text' value='" +shop_Write_P_BoardDTO.getQna_title()  +"' class='review_text' style='font-size: 0.8em; color: black;' readonly>"
        +"<input type='text' value='"+ LocalDateTime.now().toString().substring(0, 10) +"' class='review_text' style='font-size: 0.8em; color: gray;' readonly>"
    +"</div>";
    
		
		out.print(data);
		
		
		
		
	}
}
