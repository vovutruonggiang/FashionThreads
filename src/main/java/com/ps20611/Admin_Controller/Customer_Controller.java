package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20611.Admin_DAO.Customer_DAO;
import com.ps20611.Admin_DAO.Status_DAO;
import com.ps20611.Entity.Customer_Entity;
import com.ps20611.Entity.Status_Entity;
import com.ps20611.Services.Customer_Services;

@Controller
@RequestMapping("/views/")
public class Customer_Controller {

	@Autowired
	Customer_DAO customer_DAO;

	@Autowired
	Status_DAO status_Customer;

	@Autowired
	Customer_Services customer_Services;

	@RequestMapping("manage_customer_fashion_threads")
	public String manage_Customer(Model model) {
		model.addAttribute("customer", new Customer_Entity());
		return "admin/jsp/manage_customer";
	}

	@ModelAttribute("list_Customer")
	public List<Customer_Entity> list_Customer() {
		return customer_DAO.findAll();
	}

	@ModelAttribute("list_Status")
	public List<Status_Entity> list_Status() {
		return status_Customer.findAll();
	}

	@PostMapping("/manage_customer_fashion_threads/updateStatusCustomer")
	public String updateStatus_Customer(Model model, @RequestParam("customerID") Integer customerID,
			@RequestParam("status_id") String status_id) {
		try {
			Customer_Entity customer_Entity = customer_DAO.findById(customerID).orElse(null);
			Status_Entity status = status_Customer.findById(status_id).orElse(null);
			if (customer_Entity != null && status != null) {
				customer_Entity.setStatus_id(status);
				customer_DAO.save(customer_Entity);
			}
		} catch (Exception e) {
			e.getMessage();
		}
		return "redirect:/views/manage_customer_fashion_threads";
	}
}
