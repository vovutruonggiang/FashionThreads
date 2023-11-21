package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Brand_DAO;
import com.ps20611.Admin_DAO.Category_Menu_DAO;
import com.ps20611.Admin_DAO.Category_Product_DAO;
import com.ps20611.Admin_DAO.Category_Product_Type_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Admin_DAO.Status_DAO;
import com.ps20611.Entity.Brand_Entity;
import com.ps20611.Entity.Category_Menu_Entity;
import com.ps20611.Entity.Category_Product_Entity;
import com.ps20611.Entity.Category_Product_Type_Entity;
import com.ps20611.Entity.Product_Entity;
import com.ps20611.Entity.Status_Entity;

@Controller
@RequestMapping("/views/")
public class Product_Controller {

	@Autowired
	Product_DAO dao_product;

	@Autowired
	Category_Product_DAO dao_category;

	@Autowired
	Brand_DAO dao_brand;

	@Autowired
	Category_Menu_DAO category_dao;

	@Autowired
	Category_Product_Type_DAO category_product_type_dao;

	@Autowired
	Category_Product_DAO category_product_dao;

	@Autowired
	Status_DAO status_dao;

	@RequestMapping("manage_product_fashion_threads")
	public String manage_Product(Model model) {
		model.addAttribute("product", new Product_Entity());
		return "admin/jsp/manage_product";
	}

	@ModelAttribute("list_category_menu")
	public List<Category_Menu_Entity> list_category_menu() {
		return category_dao.findAll();
	}

	@ModelAttribute("list_Product")
	public List<Product_Entity> list_Product() {
		return dao_product.findAll();
	}

	@ModelAttribute("list_category_product_type")
	public List<Category_Product_Type_Entity> list_category_product_type() {
		return category_product_type_dao.list_category_product_type(1);
	}

	@ModelAttribute("list_category_product")
	public List<Category_Product_Entity> list_category_product() {
		return category_product_dao.findAll();
	}

	@ModelAttribute("list_Brand")
	public List<Brand_Entity> list_Brand() {
		return dao_brand.findAll();
	}

	@ModelAttribute("list_status")
	public List<Status_Entity> list_status() {
		return status_dao.listStatatus();
	}

	@RequestMapping("manage_product_fashion_threads/insert")
	public String save_Product(Product_Entity product) {
		dao_product.save(product);
		return "redirect:/views/manage_product_fashion_threads";
	}

	@RequestMapping("manage_product_fashion_threads/update")
	public String update_Product(Product_Entity product) {
		dao_product.save(product);
		return "redirect:/views/manage_product_fashion_threads";
	}

	@RequestMapping("manage_product_fashion_threads/edit/{id}")
	public String edit_Product(Model model, @PathVariable("id") Integer id) {
		Product_Entity product = dao_product.findById(id).get();
		model.addAttribute("product", product);
//		List<Product_Entity> items = dao_product.findAll();
//		model.addAttribute("items", items);
		return "admin/jsp/manage_product";
	}
}