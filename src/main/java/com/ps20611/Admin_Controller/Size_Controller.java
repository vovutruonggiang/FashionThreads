package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Size_DAO;
import com.ps20611.Entity.Size_Entity;

@Controller
@RequestMapping("/views/")
public class Size_Controller {

	@Autowired
	Size_DAO size_DAO;

	@RequestMapping("manage_size_fashion_threads")
	public String manage_Size(Model model) {
		Size_Entity size = new Size_Entity();
		model.addAttribute("size", size);
		List<Size_Entity> sizes = size_DAO.findAll();
		model.addAttribute("sizes", sizes);
		return "admin/jsp/manage_size";
	}

	@GetMapping("manage_size_fashion_threads/edit/{id}")
	public String edit_Size(Model model, @PathVariable("id") Integer id) {
		Size_Entity size = size_DAO.findById(id).get();
		model.addAttribute("size", size);
		List<Size_Entity> sizes = size_DAO.findAll();
		model.addAttribute("sizes", sizes);
		return "admin/jsp/manage_size";
	}

	@PostMapping("manage_size_fashion_threads/insert")
	public String insert_Size(Size_Entity size) {
		size_DAO.save(size);
		return "redirect:/views/manage_size_fashion_threads";
	}

	@PostMapping("manage_size_fashion_threads/update")
	public String update_Size(Size_Entity size) {
		size_DAO.save(size);
		return "redirect:/views/manage_size_fashion_threads";
	}
}
