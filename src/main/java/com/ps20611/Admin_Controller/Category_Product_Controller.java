package com.ps20611.Admin_Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Category_Menu_DAO;
import com.ps20611.Admin_DAO.Category_Product_DAO;
import com.ps20611.Admin_DAO.Category_Product_Type_DAO;
import com.ps20611.Entity.Category_Menu_Entity;
import com.ps20611.Entity.Category_Product_Entity;
import com.ps20611.Entity.Category_Product_Type_Entity;

@Controller
@RequestMapping("/views/")
public class Category_Product_Controller {

	@Autowired
	Category_Menu_DAO category_menu_dao;

	@Autowired
	Category_Product_Type_DAO category_product_type_dao;

	@Autowired
	Category_Product_DAO category_product_dao;

	@RequestMapping("manage_category_product_fashion_threads")
	public String manage_Category(Model model) {
		model.addAttribute("category_product", new Category_Product_Entity());
		return "/admin/jsp/manage_category_product";
	}

	@ModelAttribute("list_category_product_type")
	public List<Category_Product_Type_Entity> list_category_product_type() {
		return category_product_type_dao.list_category_product_type(1);
	}

	@ModelAttribute("list_category_menu")
	public List<Category_Menu_Entity> list_category_menu() {
		return category_menu_dao.findAll();
	}

	@ModelAttribute("list_category_product")
	public List<Category_Product_Entity> list_category_product() {
		return category_product_dao.findAll();
	}

	@RequestMapping("manage_category_product_fashion_threads/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Category_Product_Entity list_category = category_product_dao.findById(id).get();
		model.addAttribute("category_product", list_category);
		return "/admin/jsp/manage_category_product";
	}

	@RequestMapping("manage_category_product_fashion_threads/insert")
	public String save(Category_Product_Entity category_product) {
		category_product_dao.save(category_product);
		return "redirect:/views/manage_category_product_fashion_threads";
	}
}
