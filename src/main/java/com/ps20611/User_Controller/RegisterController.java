package com.ps20611.User_Controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20611.Admin_DAO.Account_DAO;
import com.ps20611.Admin_DAO.Staff_DAO;
import com.ps20611.Entity.Account_Entity;
import com.ps20611.Entity.Staff_Entity;

@Controller
public class RegisterController {

	@Autowired
	Account_DAO accDao;

	@RequestMapping("/form/register")
	public String view(@ModelAttribute("register") Staff_Entity s) {
		return "/user/form_register/register";
	}

	@PostMapping("/register/account")
	public String addAccount( @ModelAttribute("register") Account_Entity  acc, Model model,
			@RequestParam("pass") String pasString) {
//		System.out.println(pasString);
//		System.out.println(acc.getMatkhaudangnhap());
		
		 if (!acc.getPassword().equalsIgnoreCase(pasString)) {
			model.addAttribute("message", "Mật khẩu hiện tại không khớp !");
			return "form_register/register";
		}  
			accDao.save(acc);

		
		return "form_register/success";
	}
}
