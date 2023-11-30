package com.ps20611.User_Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20611.Admin_DAO.Account_DAO;
import com.ps20611.Admin_DAO.Staff_DAO;
import com.ps20611.Entity.Account_Entity;
import com.ps20611.Entity.Staff_Entity;
import com.ps20611.Services.SessionService;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/views/")
public class Info_Controller {

	@Autowired
	Account_DAO account_dao;
	@Autowired
	Staff_DAO staff_dao;
	@Autowired
	SessionService sessionService;

	@RequestMapping("info")
	public String info(Model model, @ModelAttribute("infor") Staff_Entity staff) {
		Account_Entity acc =   sessionService.get("username");
		int id = acc.getStaff().getId();
		Staff_Entity staffs = staff_dao.findById(id).get();
		model.addAttribute("staffs", staffs);
		return "user/jsp/infor";
	}

	@PostMapping("info/update")
	public String update(@ModelAttribute("infor") Staff_Entity staff, @RequestParam("sex") Boolean sex) {

		staff.setSex(sex);
		staff.setStatus_id(null);
		staff_dao.save(staff);
		return "redirect:/views/info";
	}
}
