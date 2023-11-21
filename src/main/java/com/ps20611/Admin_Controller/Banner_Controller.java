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
import com.ps20611.Admin_DAO.Banner_DAO;
import com.ps20611.Admin_DAO.Status_DAO;
import com.ps20611.Entity.Banner_Entity;
import com.ps20611.Entity.Status_Entity;

@Controller
@RequestMapping("/views/")
public class Banner_Controller {

	@Autowired
	Banner_DAO banner_DAO;

	@Autowired
	Status_DAO status_Banner;

	@RequestMapping("manage_banner_fashion_threads")
	public String managa_Banner(Model model) {
		model.addAttribute("banner", new Banner_Entity());
		return "admin/jsp/manage_banner";
	}

	@ModelAttribute("list_Status")
	public List<Status_Entity> list_Status() {
		return status_Banner.findAll();
	}

	@ModelAttribute("list_Banner")
	public List<Banner_Entity> list_Account() {
		return banner_DAO.findAll();
	}

	@PostMapping("manage_banner_fashion_threads/insert")
	public String insert_Banner(Banner_Entity banner) {
		banner_DAO.save(banner);
		return "redirect:/views/manage_banner_fashion_threads";
	}

	@PostMapping("manage_banner_fashion_threads/update")
	public String update_Banner(Banner_Entity banner) {
		banner_DAO.save(banner);
		return "redirect:/views/manage_banner_fashion_threads";
	}

	@GetMapping("manage_banner_fashion_threads/edit/{id}")
	public String edit_Banner(Model model, @PathVariable("id") Integer id) {
		Banner_Entity banner = banner_DAO.findById(id).get();
		model.addAttribute("banner", banner);
		List<Banner_Entity> banners = banner_DAO.findAll();
		model.addAttribute("banners", banners);
		return "admin/jsp/manage_banner";
	}

	@PostMapping("/manage_banner_fashion_threads/updateStatusBanner")
	public String updateStatus_Customer(Model model, @RequestParam("bannerID") Integer bannerID,
			@RequestParam("status_id") String status_id) {
		try {
			Banner_Entity banner_Entity = banner_DAO.findById(bannerID).orElse(null);
			Status_Entity status = status_Banner.findById(status_id).orElse(null);
			if (banner_Entity != null && status != null) {
				banner_Entity.setStatus_id(status);
				banner_DAO.save(banner_Entity);
			}
		} catch (Exception e) {
			e.getMessage();
		}
		return "redirect:/views/manage_banner_fashion_threads";
	}
}
