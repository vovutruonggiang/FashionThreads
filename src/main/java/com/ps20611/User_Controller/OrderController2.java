package com.ps20611.User_Controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.ps20611.Admin_DAO.Invoice_DAO;
import com.ps20611.Entity.Invoice_Entity;



@Controller
public class OrderController2 {
	@Autowired
	Invoice_DAO orderDao;

	@GetMapping("/form/order2")
	public String viewOrder(Model model) {
		List<Invoice_Entity> orders = orderDao.findAll();
		model.addAttribute("listhd", orders );
		return "user/jsp/manage_order";
	}
	
	@ModelAttribute("listhd")
	public List<Invoice_Entity> list(){
		return orderDao.findAll();
	}
	
	@GetMapping("/invoice/dathangthanhcong")
	public String dathangthanhcong(Model model) {
		List<Invoice_Entity> orders1 = orderDao.listhd();
		model.addAttribute("listhd", orders1 );
		return "user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/dangxuly")
	public String dangxuly(Model model) {
		List<Invoice_Entity> orders1 = orderDao.listhd2();
		model.addAttribute("listhd", orders1 );
		return "user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/chogiaovan")
	public String chogiaovan(Model model) {
		List<Invoice_Entity> orders1 = orderDao.listhd3();
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/dagui")
	public String dagui(Model model) {
		List<Invoice_Entity> orders1 = orderDao.listhd4();
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/danhanhang")
	public String danhanhang(Model model) {
		List<Invoice_Entity> orders1 = orderDao.listhd5();
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/dahuy")
	public String dahuy(Model model) {
		List<Invoice_Entity> orders1 = orderDao.listhd6();
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
	@GetMapping("/invoice/trahang")
	public String trahang(Model model) {
		List<Invoice_Entity> orders1 = orderDao.listhd7();
		model.addAttribute("listhd", orders1 );
		return "/user/jsp/manage_order";
	}
	
}