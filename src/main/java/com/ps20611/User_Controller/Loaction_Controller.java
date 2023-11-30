package com.ps20611.User_Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/views/")
public class Loaction_Controller {
	@RequestMapping("adress")
	public String view_adress() {
		return"user/jsp/location";
	}
}
