package com.ps20611.Admin_Statistical;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.ps20611.Services.Profit_Services;
import com.ps20611.Services.Revenue_Statistics_Services;

@Controller
@RequestMapping("/views/")
public class Profit_Controller {

	@Autowired
	Profit_Services profit_Services;

	@Autowired
	Revenue_Statistics_Services revenue_Statistics_Services;

	@RequestMapping("statistical/profit")
	public String profit(Model model) {
		List<Object[]> profit = profit_Services.getProfit();
		model.addAttribute("profits", profit);
		return "admin/statistical/profit";
	}

	@GetMapping("statistical/profit/searchByDate")
	public String searchByDateRange(
			@RequestParam("order_dates") @DateTimeFormat(pattern = "yyyy-MM-dd") Date order_dates, Model model) {
		List<Object[]> profit = profit_Services.searchByDateRange(order_dates);
		model.addAttribute("profits", profit);
		return "admin/statistical/profit";
	}

	@GetMapping("statistical/profit/getProfitLast30Days")
	public String getProfitLast30Days(Model model) {
		List<Object[]> profit = profit_Services.getProfitLast30Days();

		model.addAttribute("profits", profit);
		return "admin/statistical/profit";
	}

	@GetMapping("statistical/profit/getProfitLast15Days")
	public String getProfitLast15Days(Model model) {
		List<Object[]> profit = profit_Services.getProfitLast15Days();

		model.addAttribute("profits", profit);
		return "admin/statistical/profit";
	}

	@GetMapping("statistical/profit/getProfitLast7Days")
	public String getProfitLast7Days(Model model) {
		List<Object[]> profit = profit_Services.getProfitLast7Days();

		model.addAttribute("profits", profit);
		return "admin/statistical/profit";
	}

	@GetMapping("statistical/profit/getProfitLast1Days")
	public String getProfitLast1Days(Model model) {
		List<Object[]> profit = profit_Services.getProfitLast1Days();

		model.addAttribute("profits", profit);
		return "admin/statistical/profit";
	}

	@GetMapping("statistical/profit/getProfitToday")
	public String getProfitToday(Model model) {
		List<Object[]> profit = profit_Services.getProfitToday();
		model.addAttribute("profits", profit);
		return "admin/statistical/profit";
	}
}
