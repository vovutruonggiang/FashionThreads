package com.ps20611.User_Controller;

import java.io.UnsupportedEncodingException;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ps20611.Admin_DAO.Cart_Item_DAO;
import com.ps20611.Admin_DAO.Customer_DAO;
import com.ps20611.Admin_DAO.Invoice_DAO;
import com.ps20611.Admin_DAO.Invoice_Detail_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Admin_DAO.Staff_DAO;
import com.ps20611.Entity.CartItems_Entity;
import com.ps20611.Entity.Customer_Entity;
import com.ps20611.Entity.Detailed_Invoice_Entity;
import com.ps20611.Entity.Invoice_Entity;
import com.ps20611.Entity.Product_Entity;
import com.ps20611.Entity.Staff_Entity;
import com.ps20611.Services.CartDBService;
import com.ps20611.Services.PaymentService;
import com.ps20611.Services.SessionService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {
	@Autowired
	CartDBService cartDBService;
	@Autowired
	Cart_Item_DAO cartItemDao;
	@Autowired
	Invoice_DAO invoice_DAO;
	@Autowired
	Invoice_Detail_DAO invoicedetail_DAO;
	@Autowired
	Customer_DAO customer_DAO;
	@Autowired
	Product_DAO pro_DAO;
	@Autowired
	PaymentService paymentService;
	@Autowired
	Staff_DAO staffDao;
	@Autowired
	SessionService sessionService;
	@Autowired
	HttpSession session;
	@RequestMapping("/views/payment")
	public String showPay(Model model, @ModelAttribute("invoice") Invoice_Entity invoice) {
		model.addAttribute("cart", cartItemDao.findAll());
		return "user/payment/pay";
	}

	@PostMapping("/checkout/save")
	public String pay(@ModelAttribute("invoice") Invoice_Entity invoice) throws UnsupportedEncodingException {
		if (invoice.getPayment_methods().equals("thẻ")) {
			saveInvoice(invoice);
			return "redirect:" + paymentService.payment();
		}
		saveInvoice(invoice);
		cartItemDao.deleteAll();
		return "redirect:/views/paymentsucces";
	}

	@ModelAttribute("countQuantity")
	public int quantity() {
		List<CartItems_Entity> cartEntity = (List<CartItems_Entity>) cartDBService.getALLCartEntity();
		return cartEntity.stream().mapToInt(item -> item.getQuantity()).sum();
	}

	@ModelAttribute("countTotalProduct")
	public int total() {
		List<CartItems_Entity> cartEntity = (List<CartItems_Entity>) cartDBService.getALLCartEntity();
		return (int) cartEntity.stream().mapToDouble(item -> item.getQuantity() * item.getPrice()).sum();
	}

	public void saveInvoice(Invoice_Entity invoice) {
//		Customer_Entity customers = sessionService.get("username");
//		
//		System.out.println(customers.getId());
//		

	int id = (int) session.getAttribute("id");
		Staff_Entity staff = staffDao.findById(id).get();
		invoice.setDate_of_payment(new Date());
		invoice.setOrder_date(new Date());
		invoice.setStaff_id(staff);
		invoice.setTotal_amount(total());
		invoice.setDiscount_id(null);
		invoice_DAO.save(invoice);

		for (CartItems_Entity c : cartItemDao.findAll()) {
			Detailed_Invoice_Entity detailIvoice = new Detailed_Invoice_Entity();
			Product_Entity pro = pro_DAO.getById(c.getProduct().getId());
			Invoice_Entity invoices = invoice_DAO.getById(invoice.getId());
			detailIvoice.setProduct_id(pro);
			detailIvoice.setColor(c.getColor());
			detailIvoice.setQuanlity(c.getQuantity());
			detailIvoice.setPrice(c.getPrice());
			detailIvoice.setSize(c.getSize());
			detailIvoice.setInvoice_id(invoices);
			detailIvoice.setDiscount_id(null);
			invoicedetail_DAO.save(detailIvoice);
		}

	}
}