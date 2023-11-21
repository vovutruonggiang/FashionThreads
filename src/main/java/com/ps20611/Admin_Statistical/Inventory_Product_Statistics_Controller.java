package com.ps20611.Admin_Statistical;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import com.ps20611.Services.Inventory_Product_Statistics_Services;

@Controller
@RequestMapping("/views/")
public class Inventory_Product_Statistics_Controller {

	@Autowired(required = true)
	Inventory_Product_Statistics_Services inventory_Product_Statistics_Services;

	@RequestMapping("statistical/inventory_product_statistics")
	public String inventory_Product_Statistics(Model model) {
		model.addAttribute("inventoryProductStatistics",
				inventory_Product_Statistics_Services.getCustomProductDetails());
		Long productCount = inventory_Product_Statistics_Services.getProductCountWithQuantityGreaterThanZero();
		model.addAttribute("productCount", productCount);
		return "admin/statistical/inventory_product_statistics";
	}
}
