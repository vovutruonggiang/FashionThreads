package com.ps20611.Admin_Controller;

import java.sql.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20611.Admin_DAO.Invoice_DAO;
import com.ps20611.Entity.Invoice_Entity;
import com.ps20611.Services.Invoice_Services;

@Controller
@RequestMapping("/views/")
public class Invoice_Controller {

	@Autowired
	Invoice_DAO invoice_DAO;

	@Autowired
	Invoice_DAO invoiceDao;

	@Autowired
	Invoice_Services invoice_Services;

	@RequestMapping("manage_invoice_fashion_threads")
	public String manage_Invoice(Model model) {
		model.addAttribute("invoice", invoiceDao.findAll());
		return "admin/jsp/manage_invoice";
	}

	@PostMapping("manage_invoice_fashion_threads/search")
	public String searchInvoicesByDate(@RequestParam("ngayMua") Date ngayMua, Model model) {
		System.out.println(ngayMua);
		List<Invoice_Entity> list_Invoice = invoice_Services.findInvoicesByDate(ngayMua);
		model.addAttribute("invoice", list_Invoice);
		return "admin/jsp/manage_invoice";
	}
}
