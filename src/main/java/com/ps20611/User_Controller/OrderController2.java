package com.ps20611.User_Controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.ps20611.Admin_DAO.Invoice_DAO;
import com.ps20611.Entity.Account_Entity;
import com.ps20611.Entity.Invoice_Entity;

import jakarta.servlet.http.HttpSession;



@Controller
public class OrderController2 {
	@Autowired
	Invoice_DAO orderDao;
	@Autowired
	HttpSession session;
	@GetMapping("/form/order2")
	
	public String viewOrder(Model model) {
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		List<Invoice_Entity> orders = orderDao.listhdac(ac.getStaff().getId());
		model.addAttribute("listhd", orders );
		return "user/jsp/manage_order";
	}
	
	@ModelAttribute("listhd")
	public List<Invoice_Entity> list(){
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		return orderDao.listhdac(ac.getStaff().getId());
	}
	
	@GetMapping("/invoice/dathangthanhcong")
	public String dathangthanhcong(Model model) {
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		List<Invoice_Entity> orders1 = orderDao.listhd(ac.getStaff().getId());
		model.addAttribute("listhd", orders1 );
		return "user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/dangxuly")
	public String dangxuly(Model model) {
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		List<Invoice_Entity> orders1 = orderDao.listhd2(ac.getStaff().getId());
		model.addAttribute("listhd", orders1 );
		return "user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/chogiaovan")
	public String chogiaovan(Model model) {
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		List<Invoice_Entity> orders1 = orderDao.listhd3(ac.getStaff().getId());
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/dagui")
	public String dagui(Model model) {
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		List<Invoice_Entity> orders1 = orderDao.listhd4(ac.getStaff().getId());
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/danhanhang")
	public String danhanhang(Model model) {
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		List<Invoice_Entity> orders1 = orderDao.listhd5(ac.getStaff().getId());
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/dahuy")
	public String dahuy(Model model) {
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		List<Invoice_Entity> orders1 = orderDao.listhd6(ac.getStaff().getId());
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/trahang")
	public String trahang(Model model) {
		Account_Entity ac = (Account_Entity) session.getAttribute("username");
		List<Invoice_Entity> orders1 = orderDao.listhd7(ac.getStaff().getId());
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
}