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
import com.ps20611.Admin_DAO.Color_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Admin_DAO.Product_Detail_DAO;
import com.ps20611.Admin_DAO.Size_DAO;
import com.ps20611.Entity.Category_Menu_Entity;
import com.ps20611.Entity.Category_Product_Entity;
import com.ps20611.Entity.Category_Product_Type_Entity;
import com.ps20611.Entity.Color_Entity;
import com.ps20611.Entity.Detailed_Products_Entity;
import com.ps20611.Entity.Product_Entity;
import com.ps20611.Entity.Size_Entity;

@Controller
@RequestMapping("/views/")
public class Detailed_Products_Controller {

	@Autowired
	Product_DAO dao_product;

	@Autowired
	Product_Detail_DAO dao_detail;

	@Autowired
	Size_DAO dao_size;

	@Autowired
	Color_DAO dao_color;

	@Autowired
	Category_Menu_DAO category_menu_dao;

	@Autowired
	Category_Product_Type_DAO category_product_type_dao;

	@Autowired
	Category_Product_DAO category_product_dao;

	@RequestMapping("manage_detailed_products_fashion_threads")
	public String manage_Detailed_Products(Model model) {
		model.addAttribute("detail", new Detailed_Products_Entity());
		return "admin/jsp/manage_detailed_products";
	}

	@ModelAttribute("list_category_menu")
	public List<Category_Menu_Entity> list_category_menu() {
		return category_menu_dao.findAll();
	}

	@ModelAttribute("list_category_product_type")
	public List<Category_Product_Type_Entity> list_category_product_type() {
		return category_product_type_dao.findAll();
	}

	@ModelAttribute("list_category_product")
	public List<Category_Product_Entity> list_category_product() {
		return category_product_dao.findAll();
	}

	@ModelAttribute("list_Product")
	public List<Product_Entity> list_Product() {
		return dao_product.findAll();
	}

	@ModelAttribute("list_Size")
	public List<Size_Entity> list_Size() {
		return dao_size.findAll();
	}

	@ModelAttribute("list_Color")
	public List<Color_Entity> list_Color() {
		return dao_color.findAll();
	}

	@ModelAttribute("list_Detail_Product")
	public List<Detailed_Products_Entity> list_Detail_Product() {
		return dao_detail.findAll();
	}

	@RequestMapping("manage_detailed_products_fashion_threads/insert")
	public String save(Detailed_Products_Entity detail_product) {
		dao_detail.save(detail_product);
		return "redirect:/views/manage_detailed_products_fashion_threads";
	}

	@RequestMapping("manage_detailed_products_fashion_threads/update")
	public String update_Staff(Detailed_Products_Entity detail) {
		dao_detail.save(detail);
		return "redirect:/views/manage_detailed_products_fashion_threads";
	}

	@RequestMapping("manage_detailed_products_fashion_threads/edit/{id}")
	public String edit_Account(Model model, @PathVariable("id") Integer id) {
		Detailed_Products_Entity detail = dao_detail.findById(id).get();
		model.addAttribute("detail", detail);
		List<Detailed_Products_Entity> items = dao_detail.findAll();
		model.addAttribute("items", items);
		return "admin/jsp/manage_detailed_products";
	}
}
