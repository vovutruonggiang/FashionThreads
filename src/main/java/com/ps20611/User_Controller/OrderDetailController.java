package com.ps20611.User_Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import com.ps20611.Admin_DAO.Invoice_Detail_DAO;
import com.ps20611.Entity.Detailed_Invoice_Entity;

 

@Controller
public class OrderDetailController {
	@Autowired
	Invoice_Detail_DAO orderDetailDao;
	Integer tong = 0;

	@GetMapping("/form/OrderDetail/{id}")
	public String viewDetail(Model model, @PathVariable("id") Integer id) {
		List<Detailed_Invoice_Entity> orderDetail = orderDetailDao.getAllOrderDetailByID(id);

		tong = (int)orderDetail.stream().mapToDouble(item -> item.getPrice() * item.getQuanlity()).sum();

		model.addAttribute("Tong", tong);
		model.addAttribute("orderDetail", orderDetail);
		return "user/form_orderdetail/orderdetail";
	}
}
