package com.shop.login.controller;


import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.cart.dispatcher.Controller;

@WebServlet("/logout.do")
public class LogoutController extends HttpServlet {


	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("로그아웃 시도");
		
		HttpSession session = req.getSession();
		
		if(session.isNew()) {
			
		}else {
			session.removeAttribute("login_chk");
			session.invalidate();
		}
		
		
		
		resp.sendRedirect("/web/productList.do");
	
	}
	
	
}
