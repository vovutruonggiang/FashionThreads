package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ps20611.Admin_DAO.Account_DAO;
import com.ps20611.Admin_DAO.Role_DAO;
import com.ps20611.Entity.Account_Entity;
import com.ps20611.Entity.Role_Entity;

@Controller
@RequestMapping("/views/")
public class Account_Controller {

	@Autowired
	Account_DAO account_DAO;

	@Autowired
	Role_DAO role_DAO;

	@RequestMapping("manage_account_fashion_threads")
	public String manage_Account(Model model) {
		Account_Entity account = new Account_Entity();
		model.addAttribute("account", account);
		List<Account_Entity> accounts = account_DAO.findAll();
		model.addAttribute("accounts", accounts);

		return "admin/jsp/manage_account";
	}

	@ModelAttribute("list_Role")
	public List<Role_Entity> list_Role() {
		return role_DAO.findAll();
	}

	@GetMapping("manage_account_fashion_threads/edit/{id}")
	public String edit_Account(Model model, @PathVariable("id") String id) {
		Account_Entity account = account_DAO.findById(id).get();
		model.addAttribute("account", account);
		List<Account_Entity> accounts = account_DAO.findAll();
		model.addAttribute("accounts", accounts);
		return "admin/jsp/manage_account";
	}

	@PostMapping("manage_account_fashion_threads/insert")
	public String insert_Account(Account_Entity account) {
		account_DAO.save(account);
		return "redirect:/views/manage_account_fashion_threads";
	}

	@PostMapping("manage_account_fashion_threads/update")
	public String update_Account(Account_Entity account) {
		account_DAO.save(account);
		return "redirect:/views/manage_account_fashion_threads";
	}
}
