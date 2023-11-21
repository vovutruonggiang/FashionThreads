package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ps20611.Admin_DAO.Status_DAO;
import com.ps20611.Entity.Status_Entity;

@Controller
@RequestMapping("/views/")
public class Status_Controller {

	@Autowired
	Status_DAO status_DAO;

	@RequestMapping("manage_status_fashion_threads")
	public String manage_Status(Model model) {
		Status_Entity status = new Status_Entity();
		model.addAttribute("status", status);
		List<Status_Entity> statuss = status_DAO.findAll();
		model.addAttribute("statuss", statuss);
		return "admin/jsp/manage_status";
	}

	@GetMapping("manage_status_fashion_threads/edit/{id}")
	public String edit_Status(Model model, @PathVariable("id") String id) {
		Status_Entity status = status_DAO.findById(id).get();
		model.addAttribute("status", status);
		List<Status_Entity> statuss = status_DAO.findAll();
		model.addAttribute("statuss", statuss);
		return "admin/jsp/manage_status";
	}

	@PostMapping("manage_status_fashion_threads/insert")
	public String insert_Status(Status_Entity status) {
		status_DAO.save(status);
		return "redirect:/views/manage_status_fashion_threads";
	}

	@PostMapping("manage_status_fashion_threads/update")
	public String update_Status(Status_Entity status) {
		status_DAO.save(status);
		return "redirect:/views/manage_status_fashion_threads";
	}
}
