package com.ps20611.Admin_Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/views/")
public class Index_Controller {

	@RequestMapping("index_fashion_threads")
	public String index(Model model) {
		return"admin/jsp/index";
	}
}
