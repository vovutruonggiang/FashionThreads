package com.ps20611.User_Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Favorite_DAO;
import com.ps20611.Entity.Favourite_Entity;

@Controller
@RequestMapping("/views/")
public class Favorite_Controller {
	
	@Autowired
	Favorite_DAO favorite_dao;
	
	@RequestMapping("favorite-products")
	public String view_favorite() {
		return"user/jsp/favorite";
	}
	
	@ModelAttribute("list_favorite")
	public List<Favourite_Entity> list_favorite(){
		return favorite_dao.findAll();
	}
	
	@RequestMapping("favorite/delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		favorite_dao.deleteById(id);
		return "redirect:/views/favorite-products";
	}
}
