package com.ps20611.Admin_Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Invoice_Detail_DAO;
import com.ps20611.Entity.Detailed_Invoice_Entity;

@Controller
@RequestMapping("/views/")
public class Detailed_Invoice_Controller {

	@RequestMapping("manage_detailed_invoice_fashion_threads")
	public String manage_Customer(Model model) {
		return "admin/jsp/manage_detailed_invoice";
	}

	@Autowired
	Invoice_Detail_DAO invoiceDetailDao;

	double tong = 0;

	@GetMapping("manage_detailed_invoice_fashion_threads/{id}")
	public String manage_Detailed_Invoice(Model model, @PathVariable("id") Optional<Integer> id) {

		List<Detailed_Invoice_Entity> invoiceDetail = invoiceDetailDao.getDetailById(id);

		tong = invoiceDetail.stream().mapToDouble(detail -> detail.getPrice() * detail.getQuanlity()).sum();

		model.addAttribute("Tong", tong);

		model.addAttribute("invoice_detail", invoiceDetail);

		return "admin/jsp/manage_detailed_invoice";
	}

	@GetMapping("manage_detailed_invoice_fashion_threads")
	public String viewDetail(Model model) {

		List<Detailed_Invoice_Entity> invoiceDetail = invoiceDetailDao.findAll();
		tong = invoiceDetail.stream().mapToDouble(total -> total.getPrice() * total.getQuanlity()).sum();
		model.addAttribute("Tong", tong);
		model.addAttribute("invoice_detail", invoiceDetail);
		return "admin/jsp/manage_detailed_invoice";
	}
}
