package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Role_DAO;
import com.ps20611.Entity.Role_Entity;
import com.ps20611.Utils.CustomValidationException;

@Controller
@RequestMapping("/views/")
public class Role_Controller {

	@Autowired
	Role_DAO role_DAO;

	@RequestMapping("manage_role_fashion_threads")
	public String manage_Role(Model model) {
		Role_Entity role = new Role_Entity();
		model.addAttribute("role", role);
		List<Role_Entity> roles = role_DAO.findAll();
		model.addAttribute("roles", roles);
		return "admin/jsp/manage_role";
	}

	@GetMapping("manage_role_fashion_threads/edit/{id}")
	public String edit_Role(Model model, @PathVariable("id") Integer id) {
		Role_Entity role = role_DAO.findById(id).get();
		model.addAttribute("role", role);
		List<Role_Entity> roles = role_DAO.findAll();
		model.addAttribute("roles", roles);
		return "admin/jsp/manage_role";
	}

	@PostMapping("manage_role_fashion_threads/insert")
	public String insert_Role(Role_Entity role) {
		role_DAO.save(role);
		return "redirect:/views/manage_role_fashion_threads";
	}

	@PostMapping("manage_role_fashion_threads/update")
	public String update_Role(Role_Entity role) {
		role_DAO.save(role);
		return "redirect:/views/manage_role_fashion_threads";
	}

	@SuppressWarnings("unused")
	private void validateRole(Role_Entity role) throws CustomValidationException {
		if (role.getName_role() == null || role.getName_role().isEmpty()) {
			throw new CustomValidationException("Không Để Trống Vai Trò !");
		} else if (role.getName_role().length() < 1 || role.getName_role().length() > 50) {
			throw new CustomValidationException("Giới Hạn Ký Tự Từ 1 --> 50 !");
		}
	}
}
