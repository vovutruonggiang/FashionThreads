package com.ps20611.User_Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Invoice_DAO;
import com.ps20611.Admin_DAO.Invoice_Detail_DAO;
import com.ps20611.Entity.Detailed_Invoice_Entity;
import com.ps20611.Entity.Invoice_Entity;

@Controller
public class Detail_Invoice_Controller {
	@Autowired 
	Invoice_Detail_DAO invoice_detail_dao;
	@Autowired
	Invoice_DAO invoice_dao;
	
	@RequestMapping("/chitiethoadon/{id}")
	public String detail_invoice(Model model, @PathVariable("id") Integer id) {
		List<Detailed_Invoice_Entity> listdetail_invoice = invoice_detail_dao.findInvoiceByID(id);
		model.addAttribute("listchitiethd", listdetail_invoice);
		List<Invoice_Entity> invoice = invoice_dao.listhd8(id);
		model.addAttribute("tienmat", invoice);
		return"/user/jsp/detail_invoice";
	}
}
