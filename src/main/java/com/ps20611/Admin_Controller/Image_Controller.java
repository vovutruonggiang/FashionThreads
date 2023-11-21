package com.ps20611.Admin_Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ps20611.Admin_DAO.Images_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Admin_DAO.Product_Detail_DAO;
import com.ps20611.Entity.Detailed_Products_Entity;
import com.ps20611.Entity.Image_Entity;
import com.ps20611.Entity.Product_Entity;

@Controller
@RequestMapping("/views/")
public class Image_Controller {

	@Autowired
	Images_DAO images_DAO;

	@Autowired
	Product_Detail_DAO product_detailed_DAO;

	@Autowired
	Product_DAO product_dao;

	@RequestMapping("manage_images_fashion_threads")
	public String manage_Image(Model model) {
		model.addAttribute("images", new Image_Entity());
		return "admin/jsp/manage_images";
	}

	@ModelAttribute("list_Product")
	public List<Product_Entity> list_Product() {
		return product_dao.findAll();
	}

	@ModelAttribute("list_Images")
	public List<Image_Entity> list_Images() {
		return images_DAO.findAll();
	}

	@ModelAttribute("list_Detailed_Products")
	public List<Detailed_Products_Entity> list_Detailed_Products() {
		return product_detailed_DAO.findAll();
	}

	@RequestMapping("manage_images_fashion_threads/insert")
	public String save_Images(Image_Entity images) {
		images_DAO.save(images);
		return "redirect:/views/manage_images_fashion_threads";
	}

	@PostMapping("manage_images_fashion_threads/update")
	public String update_Images(Image_Entity images) {
		images_DAO.save(images);
		return "redirect:/views/manage_images_fashion_threads";
	}

	@RequestMapping("manage_images_fashion_threads/edit/{id}")
	public String edit_Imagest(Model model, @PathVariable("id") String id) {
		Image_Entity images = images_DAO.findById(id).get();
		model.addAttribute("images", images);
		List<Image_Entity> items = images_DAO.findAll();
		model.addAttribute("items", items);
		return "admin/jsp/manage_images";
	}
}