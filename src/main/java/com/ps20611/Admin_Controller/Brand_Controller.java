package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Brand_DAO;
import com.ps20611.Entity.Brand_Entity;

@Controller
@RequestMapping("/views/")
public class Brand_Controller {

	@Autowired
	Brand_DAO brand_DAO;

	@RequestMapping("manage_brand_fashion_threads")
	public String manage_Brand(Model model) {
		Brand_Entity item = new Brand_Entity();
		model.addAttribute("item", item);
		List<Brand_Entity> items = brand_DAO.findAll();
		model.addAttribute("items", items);
		return "admin/jsp/manage_brand";
	}

	@RequestMapping("manage_brand_fashion_threads/edit/{id}")
	public String edit_Brand(Model model, @PathVariable("id") Integer id) {
		Brand_Entity item = brand_DAO.findById(id).get();
		model.addAttribute("item", item);
		List<Brand_Entity> items = brand_DAO.findAll();
		model.addAttribute("items", items);
		return "admin/jsp/manage_brand";
	}

	@RequestMapping("manage_brand_fashion_threads/insert")
	public String insert_Brand(Brand_Entity item) {
		brand_DAO.save(item);
		return "redirect:/views/manage_brand_fashion_threads";
	}

	@RequestMapping("manage_brand_fashion_threads/update")
	public String update_Brand(Brand_Entity item) {
		brand_DAO.save(item);
		return "redirect:/views/manage_brand_fashion_threads/edit/" + item.getId();
	}

	@RequestMapping("manage_brand_fashion_threads/delete/{id}")
	public String delete_Brand(@PathVariable("id") Integer id) {
		brand_DAO.deleteById(id);
		return "redirect:/views/manage_brand_fashion_threads";
	}
}
