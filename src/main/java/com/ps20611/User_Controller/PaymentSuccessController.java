package com.ps20611.User_Controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
 
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class PaymentSuccessController {
@RequestMapping("/views/paymentsucces")
public String view(Model model,@RequestParam("vnp_Amount") String amount,@RequestParam("vnp_BankCode")String bank,@RequestParam("vnp_PayDate") String date) {
 	model.addAttribute("bank", bank);
	model.addAttribute("amount",amount);
//	model.addAttribute("date",new Date("MM-DD-YYYY"));
	return "user/payment/paymentSuccess";
}
}
