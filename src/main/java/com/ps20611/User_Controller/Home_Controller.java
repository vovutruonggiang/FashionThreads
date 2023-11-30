package com.ps20611.User_Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20611.Admin_DAO.Account_DAO;
import com.ps20611.Admin_DAO.Category_Menu_DAO;
import com.ps20611.Admin_DAO.Category_Product_DAO;
import com.ps20611.Admin_DAO.Category_Product_Type_DAO;
import com.ps20611.Admin_DAO.Color_DAO;
import com.ps20611.Admin_DAO.Favorite_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Admin_DAO.Product_Detail_DAO;
import com.ps20611.Entity.Account_Entity;
import com.ps20611.Entity.Category_Menu_Entity;
import com.ps20611.Entity.Category_Product_Entity;
import com.ps20611.Entity.Category_Product_Type_Entity;
import com.ps20611.Entity.Detailed_Products_Entity;
import com.ps20611.Entity.Favourite_Entity;
import com.ps20611.Entity.Product_Entity;
import com.ps20611.Services.FavouriteService;

@Controller
 @RequestMapping("/views")
public class Home_Controller {
	@Autowired
	Category_Menu_DAO category_menu_dao;

	@Autowired
	Category_Product_Type_DAO category_product_type_dao;

	@Autowired
	Category_Product_DAO category_product_dao;

	@Autowired
	Product_DAO product_dao;

	@Autowired
	Color_DAO colorDao;

	@Autowired
	Product_Detail_DAO detailpro;

	@Autowired
	Favorite_DAO favorite_dao;

	@Autowired
	Account_DAO account_dao;

	@Autowired
	private FavouriteService favouriteService;

	@RequestMapping("/home")
	public String View_Home(Model model) {
		model.addAttribute("favorite", new Product_Entity());
		return "user/jsp/home";
	}

	@ModelAttribute("list_menu")
	public List<Category_Menu_Entity> list_menu() {
		return category_menu_dao.findAll();
	}

	@ModelAttribute("list_product_type")
	public List<Category_Product_Type_Entity> list_product_type() {
		return category_product_type_dao.findAll();
	}

	@ModelAttribute("list_product")
	public List<Category_Product_Entity> list_product() {
		return category_product_dao.findAll();
	}

	@ModelAttribute("list_new_product")
	public List<Product_Entity> list_new_product() {
		return product_dao.findAll();
	}

	@PostMapping("/home/favorite")
	public String saveFavourite(@RequestParam("id") int id, @RequestParam("account_id") String accountId,
			@RequestParam("product_id") int productId) {
		favouriteService.saveFavourite(id, accountId, productId);
		return "redirect:/views/home"; // Điều hướng đến trang thành công sau khi lưu dữ liệu
	}

}
