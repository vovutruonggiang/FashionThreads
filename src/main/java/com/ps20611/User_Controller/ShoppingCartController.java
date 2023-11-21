package com.ps20611.User_Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20611.Admin_DAO.Cart_Item_DAO;
import com.ps20611.Admin_DAO.Carts_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Admin_DAO.Product_Detail_DAO;
import com.ps20611.Entity.CartItems_Entity;
import com.ps20611.Services.CartDBService;

import jakarta.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
 
public class ShoppingCartController {
 
	@Autowired
	Cart_Item_DAO cartItemDao;
	@Autowired
	Product_Detail_DAO proDetailDao;
	@Autowired
	Product_DAO proDao;
	@Autowired
	CartDBService cartDBService;
	 
	@Autowired
	Carts_DAO cartDAO;
	
	@RequestMapping("/cart")
	public String viewCart(Model model) {
		model.addAttribute("cart", cartItemDao.findAll());
		 
		return "user/shopping_cart/giohang";
	}

//Luu vao Map
//	@PostMapping("/cart/add/{id}")
//	public String addCart(@PathVariable("id") Integer id,Model model,@RequestParam("color") String color, @RequestParam("size") String size) {
//		cartService.addCart(id);
//		 model.addAttribute("color", color);
//		 model.addAttribute("size", size);
//		 model.addAttribute("cart",cartService.getallCollection());
//		return "user/shopping_cart/giohang";
//	}
	// Luu xuong cookie
//	@PostMapping("/cart/add/{id}")
//	public String addCart(@PathVariable("id") Integer id, Model model, @RequestParam("color") String color,
//			@RequestParam("size") String size) {
//
//		cartCookie.addCart(id, 1, color, size);
//
//		return "redirect:/views/cart";
//	}
	// Luu xuong database
	@PostMapping("/cart/add/{id}")
	public String addCart(@PathVariable("id") Integer id, Model model, @RequestParam("color") String color,
			@RequestParam("size") String size) {

		cartDBService.addCart(2, id, 1, color, size);

		return "redirect:/cart";
	}

	@GetMapping("/cart/delete/{id}")
	public String delete(@PathVariable("id") Integer id) {
		cartDBService.delete(id);
//		cartCookie.delete(id);
		return "redirect:/cart";
	}

	@ModelAttribute("countQuantity")
	public int quantity() {
		List<CartItems_Entity> cartEntity = (List<CartItems_Entity>) cartDBService.getALLCartEntity();
		return cartEntity.stream().mapToInt(item -> item.getQuantity()).sum();
	}

	@ModelAttribute("countTotalProduct")
	public int total() {
		List<CartItems_Entity> cartEntity = (List<CartItems_Entity>) cartDBService.getALLCartEntity();
		return (int) cartEntity.stream().mapToDouble(item -> item.getQuantity() * item.getPrice()).sum();
	}

}
