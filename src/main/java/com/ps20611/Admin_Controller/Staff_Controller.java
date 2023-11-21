package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.ps20611.Admin_DAO.Account_DAO;
import com.ps20611.Admin_DAO.Staff_DAO;
import com.ps20611.Admin_DAO.Status_DAO;
import com.ps20611.Entity.Account_Entity;
import com.ps20611.Entity.Staff_Entity;
import com.ps20611.Entity.Status_Entity;
import com.ps20611.Services.Staff_Services;

@Controller
@RequestMapping("/views/")
public class Staff_Controller {

	@Autowired
	Staff_DAO staff_DAO;

	@Autowired
	Status_DAO status_Staff;

	@Autowired
	Account_DAO account_Staff;

	@Autowired
	Staff_Services staff_Services;

	@RequestMapping("manage_staff_fashion_threads")
	public String manage_Staff(Model model) {
		model.addAttribute("staff", new Staff_Entity());
		return "admin/jsp/manage_staff";
	}

	@ModelAttribute("list_Staff")
	public List<Staff_Entity> list_Staff() {
		return staff_DAO.findAll();
	}

	@ModelAttribute("list_Status")
	public List<Status_Entity> list_Status() {
		return status_Staff.findAll();
	}

	@ModelAttribute("list_Account")
	public List<Account_Entity> list_Account() {
		return account_Staff.findAll();
	}

	@PostMapping("manage_staff_fashion_threads/insert")
	public String insert_Staff(Staff_Entity staff) {
		staff_DAO.save(staff);
		return "redirect:/views/manage_staff_fashion_threads";
	}

	@PostMapping("manage_staff_fashion_threads/update")
	public String update_Staff(Staff_Entity staff) {
		staff_DAO.save(staff);
		return "redirect:/views/manage_staff_fashion_threads";
	}

	@GetMapping("manage_staff_fashion_threads/edit/{id}")
	public String edit_Account(Model model, @PathVariable("id") Integer id) {
		Staff_Entity staff = staff_DAO.findById(id).get();
		model.addAttribute("staff", staff);
		List<Staff_Entity> staffs = staff_DAO.findAll();
		model.addAttribute("staffs", staffs);
		return "admin/jsp/manage_staff";
	}

	@PostMapping("/manage_staff_fashion_threads/updateStatus")
	public String updateStatus_Staff(Model model, @RequestParam("staffID") Integer staffID,
			@RequestParam("status_id") String status_id) {
		try {
			Staff_Entity staff_Entity = staff_DAO.findById(staffID).orElse(null);
			Status_Entity status = status_Staff.findById(status_id).orElse(null);
			if (staff_Entity != null && status != null) {
				staff_Entity.setStatus_id(status);
				staff_DAO.save(staff_Entity);
			}
		} catch (Exception e) {
			e.getMessage();
		}
		return "redirect:/views/manage_staff_fashion_threads";
	}
}
