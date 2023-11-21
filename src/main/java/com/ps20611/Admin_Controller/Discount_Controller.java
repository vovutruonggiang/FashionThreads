package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Discount_DAO;
import com.ps20611.Entity.Discount_Entity;

@Controller
@RequestMapping("/views/")
public class Discount_Controller {

	@Autowired
	Discount_DAO discount_DAO;

	@RequestMapping("manage_discount_fashion_threads")
	public String index_Discount(Model model) {
		model.addAttribute("discount", new Discount_Entity());
		return "admin/jsp/manage_discount";
	}

	@ModelAttribute("items")
	public List<Discount_Entity> listitem() {
		return discount_DAO.findAll();
	}

	@RequestMapping("manage_discount_fashion_threads/insert")
	public String insert_Discount(Discount_Entity dis) {
		discount_DAO.save(dis);
		return "redirect:/views/manage_discount_fashion_threads";
	}

	@GetMapping("manage_discount_fashion_threads/edit/{id}")
	public String edit_Discount(Model model, @PathVariable("id") Integer id) {
		Discount_Entity discount = discount_DAO.findById(id).get();
		model.addAttribute("discount", discount);
		List<Discount_Entity> items = discount_DAO.findAll();
		model.addAttribute("item", items);
		return "admin/jsp/manage_discount";
	}

	@RequestMapping("manage_discount_fashion_threads/update")
	public String update_Discount(Discount_Entity discount) {
		discount_DAO.save(discount);
		return "redirect:/views/manage_discount_fashion_threads";
	}
}
