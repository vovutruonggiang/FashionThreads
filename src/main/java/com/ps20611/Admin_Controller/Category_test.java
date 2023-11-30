package com.ps20611.Admin_Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Category_Menu_DAO;
import com.ps20611.Admin_DAO.Category_Product_Type_DAO;
import com.ps20611.Entity.Category_Menu_Entity;

@Controller
public class Category_test {
	@Autowired
	Category_Menu_DAO category_menu_dao;

	@Autowired
	Category_Product_Type_DAO category_product_type_dao;
	
	@RequestMapping("category")
	public String category(Model model) {
		List<Category_Menu_Entity> menuItems = category_menu_dao.findAll();
        for (Category_Menu_Entity menuItem : menuItems) {
            menuItem.setCategory_product_type(category_product_type_dao.list_category_product_type(menuItem.getId()));
        }
        model.addAttribute("menuItems", menuItems);
		return"/admin/jsp/manager_category_test";
	}
}
