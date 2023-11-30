package com.ps20611.User_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20611.Admin_DAO.Account_DAO;
import com.ps20611.Entity.Account_Entity;
import com.ps20611.Services.CustomerUserDetailsService;
import com.ps20611.Services.SessionService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/views/")
public class Login_Controller {

	@Autowired
	Account_Entity account;
	@Autowired
	Account_DAO account_dao;
	@Autowired
	SessionService sessionService;
	@Autowired
	CustomerUserDetailsService customerUserDetailsService;

	@RequestMapping("login")
	public String view_login() {
		return "user/jsp/login";
	}

	@PostMapping("checklogin")
	public String checklogin(Model model, @RequestParam("username") String u, @RequestParam("password") String p,
			HttpSession session) {
		Account_Entity listAC = account_dao.find(u, p);
		if (listAC == null) {
			System.out.println("thatbai");
			model.addAttribute("ERROR", "Tài khoản hoặc mật khẩu không đúng");
			return "user/jsp/login";
		} else {

			System.out.println("thanhcong");
			sessionService.set("username", listAC);
			session.setAttribute("user", u);
			session.setAttribute("id", listAC.getStaff().getId());
			customerUserDetailsService.loadUserByUsername(u);
			// System.out.println(tesst.getStaff().getEmail());
		}
		return "redirect:/views/login";
	}

}
