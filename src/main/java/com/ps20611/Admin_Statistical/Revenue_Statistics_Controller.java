package com.ps20611.Admin_Statistical;

import java.util.Date;
import java.math.BigDecimal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.ps20611.Entity.Invoice_Entity;
import com.ps20611.Services.Inventory_Product_Statistics_Services;
import com.ps20611.Services.Revenue_Statistics_Services;

@Controller
@RequestMapping("/views/")
public class Revenue_Statistics_Controller {

	@Autowired
	com.ps20611.Admin_DAO.Revenue_Statistics_DAO revenue_Statistics_DAO;

	@Autowired
	Revenue_Statistics_Services revenue_Statistics_Services;

	@Autowired
	Inventory_Product_Statistics_Services inventory_Product_Statistics_Services;

	@RequestMapping("statistical/revenue_statistics")
	public String revenue_Statistics(Model model) {
		List<Invoice_Entity> invoiceDetails = revenue_Statistics_DAO.findAll();
		model.addAttribute("invoiceDetails", invoiceDetails);

		BigDecimal totalAmountSum = revenue_Statistics_Services.getTotalAmountSum();
		model.addAttribute("totalAmountSum", totalAmountSum);
		return "admin/statistical/revenue_statistics";
	}

	@RequestMapping("statistical/chart_revenue_statistics")
	public String chart_Revenue_Statistics(Model model) {
		Long productCounts = inventory_Product_Statistics_Services.getProductCountWithQuantity();
		model.addAttribute("productCounts", productCounts);
		return "admin/statistical/chart_revenue";
	}

	@GetMapping("statistical/revenue_statistics/searchByDate")
	public String searchInvoicesByDate(@RequestParam("ngayMua") @DateTimeFormat(pattern = "yyyy-MM-dd") Date ngayMua,
			Model model) {
		List<Invoice_Entity> list_Invoice = revenue_Statistics_Services.findInvoicesByDate(ngayMua);
		model.addAttribute("invoiceDetails", list_Invoice);

		double totalAmount = revenue_Statistics_Services.calculateTotalAmount(list_Invoice);
		model.addAttribute("totalAmountSum", totalAmount);
		return "admin/statistical/revenue_statistics";
	}

	@GetMapping("statistical/revenue_statistics/last30days")
	public String getInvoicesWithinLast30Days(Model model) {
		List<Invoice_Entity> invoices = revenue_Statistics_Services.findInvoicesWithinLast30Days();
		model.addAttribute("invoiceDetails", invoices);

		double totalAmount = revenue_Statistics_Services.calculateTotalAmount(invoices);
		model.addAttribute("totalAmountSum", totalAmount);
		return "admin/statistical/revenue_statistics";
	}

	@GetMapping("statistical/revenue_statistics/last15days")
	public String getInvoicesWithinLast15Days(Model model) {
		List<Invoice_Entity> invoices = revenue_Statistics_Services.findInvoicesWithinLast15Days();
		model.addAttribute("invoiceDetails", invoices);

		double totalAmount = revenue_Statistics_Services.calculateTotalAmount(invoices);
		model.addAttribute("totalAmountSum", totalAmount);
		return "admin/statistical/revenue_statistics";
	}

	@GetMapping("statistical/revenue_statistics/last7days")
	public String getInvoicesWithinLast7Days(Model model) {
		List<Invoice_Entity> invoices = revenue_Statistics_Services.findInvoicesWithinLast7Days();
		model.addAttribute("invoiceDetails", invoices);

		double totalAmount = revenue_Statistics_Services.calculateTotalAmount(invoices);
		model.addAttribute("totalAmountSum", totalAmount);
		return "admin/statistical/revenue_statistics";
	}

	@GetMapping("statistical/revenue_statistics/last1days")
	public String getInvoicesWithinLast1Days(Model model) {
		List<Invoice_Entity> invoices = revenue_Statistics_Services.findInvoicesWithinLast1Days();
		model.addAttribute("invoiceDetails", invoices);

		double totalAmount = revenue_Statistics_Services.calculateTotalAmount(invoices);
		model.addAttribute("totalAmountSum", totalAmount);
		return "admin/statistical/revenue_statistics";
	}

	@GetMapping("statistical/revenue_statistics/today")
	public String showInvoicesToday(Model model) {
		List<Invoice_Entity> invoicesToday = revenue_Statistics_Services.findInvoicesToday();
		model.addAttribute("invoiceDetails", invoicesToday);

		double totalAmount = revenue_Statistics_Services.calculateTotalAmount(invoicesToday);
		model.addAttribute("totalAmountSum", totalAmount);
		return "admin/statistical/revenue_statistics";
	}

	@GetMapping("/weeklyTotalAmounts")
	public ResponseEntity<List<Double>> getWeeklyTotalAmounts() {
		List<Double> weeklyTotalAmounts = revenue_Statistics_Services.getTotalAmountsByWeek();
		return ResponseEntity.ok(weeklyTotalAmounts);
	}
}
