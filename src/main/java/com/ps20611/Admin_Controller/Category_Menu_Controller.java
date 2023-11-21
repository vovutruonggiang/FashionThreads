package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Category_Menu_DAO;
import com.ps20611.Admin_DAO.Category_Product_Type_DAO;
import com.ps20611.Entity.Category_Menu_Entity;

@Controller
@RequestMapping("/views/")
public class Category_Menu_Controller {

	@Autowired
	Category_Menu_DAO category_menu_dao;

	@Autowired
	Category_Product_Type_DAO category_product_type_dao;

	@RequestMapping("manage_category_fashion_threads")
	public String manage_Category(Model model) {
		model.addAttribute("category_menu", new Category_Menu_Entity());
		return "/admin/jsp/manage_category_menu";
	}

	@ModelAttribute("list_category_menu")
	public List<Category_Menu_Entity> list_category_menu() {
		return category_menu_dao.findAll();
	}

	@RequestMapping("/manage_category_fashion_threads/edit/{id}")
	public String edit(Model model, @PathVariable("id") Integer id) {
		Category_Menu_Entity list_category = category_menu_dao.findById(id).get();
		model.addAttribute("category_menu", list_category);
		return "/admin/jsp/manage_category_menu";
	}

	@RequestMapping("manage_category_fashion_threads/insert")
	public String save(Category_Menu_Entity category_menu) {
		category_menu_dao.save(category_menu);
		return "redirect:/views/manage_category_fashion_threads";
	}
}
