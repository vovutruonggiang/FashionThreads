package com.ps20611.User_Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/views/")
public class Manager_Product_Controller {
	@RequestMapping("manager-order")
	public String view_manager_product() {
		return"user/jsp/manage_order";
	}
}
