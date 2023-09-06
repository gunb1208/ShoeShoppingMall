package com.shop.product.controller.brand;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.cart.dispatcher.Controller;
import com.shop.dto.Shop_Write_ProductDTO;
import com.shop.service.Shop_Select_Service;

import lombok.extern.log4j.Log4j2;

@Log4j2
public class PumaProductListController implements Controller {
	
	Shop_Select_Service shop_Select_Service = Shop_Select_Service.INSTANCE;
	
	@Override
	public String handleRequest(HttpServletRequest req, HttpServletResponse resp) {
		
		Map<String, String> map = new HashMap();
		
		map.put("product_brand", "퓨마");
		List<Shop_Write_ProductDTO> puma_list = shop_Select_Service.Select_Product(map);
		
		System.out.println(puma_list);
		
		
		
		req.setAttribute("puma_list", puma_list);
			
		return "product/brand/pumaProductList"; // 퓨마 상품 jsp로 이동
	}
	
	
}
