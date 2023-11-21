package com.ps20611.User_Controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


import com.ps20611.Admin_DAO.Invoice_DAO;
import com.ps20611.Entity.Invoice_Entity;



@Controller
public class OrderController {
	@Autowired
	Invoice_DAO orderDao;

	@GetMapping("/form/order")
	public String viewOrder(Model model) {
		List<Invoice_Entity> orders = orderDao.findAll();
		model.addAttribute("order", orders );
		return "user/form_order/order";
	}
}