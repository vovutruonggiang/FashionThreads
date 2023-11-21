package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Color_DAO;
import com.ps20611.Entity.Color_Entity;

@Controller
@RequestMapping("/views/")
public class Color_Controller {

	@Autowired
	Color_DAO color_DAO;

	@RequestMapping("manage_color_fashion_threads")
	public String manage_Color(Model model) {
		Color_Entity color = new Color_Entity();
		model.addAttribute("color", color);
		List<Color_Entity> colors = color_DAO.findAll();
		model.addAttribute("colors", colors);
		return "admin/jsp/manage_color";
	}

	@GetMapping("manage_color_fashion_threads/edit/{id}")
	public String edit_Color(Model model, @PathVariable("id") Integer id) {
		Color_Entity color = color_DAO.findById(id).get();
		model.addAttribute("color", color);
		List<Color_Entity> colors = color_DAO.findAll();
		model.addAttribute("colors", colors);
		return "admin/jsp/manage_color";
	}

	@PostMapping("manage_color_fashion_threads/insert")
	public String insert_Color(Color_Entity color) {
		color_DAO.save(color);
		return "redirect:/views/manage_color_fashion_threads";
	}

	@PostMapping("manage_color_fashion_threads/update")
	public String update_color(Color_Entity color) {
		color_DAO.save(color);
		return "redirect:/views/manage_color_fashion_threads";
	}
}
