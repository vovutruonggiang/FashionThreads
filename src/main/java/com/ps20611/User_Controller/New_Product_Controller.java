package com.ps20611.User_Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Entity.Product_Entity;

@Controller
@RequestMapping("/views/")
public class New_Product_Controller {
	
	@Autowired
	Product_DAO product_dao;
	
	@RequestMapping("new-product")
	public String view_new_product() {
		return"user/jsp/new_product";
	}
	
	@ModelAttribute("list_new_product")
	public List<Product_Entity> list_new_product() {
		return product_dao.findAll();
	}
	
}
