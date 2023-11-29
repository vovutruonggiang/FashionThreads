package com.ps20611.User_Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Entity.Product_Entity;
import com.ps20611.Services.productService;


@Controller
public class productController {
	@Autowired
//	Product_DAO daoProduct;
	private productService ProductService;
	@Autowired
	Product_DAO daoProduct;
	
	@GetMapping("/product")
	public String index(Model model, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo) {
		Page<Product_Entity> list = this.ProductService.getAll(pageNo);
		model.addAttribute("totalPage", list.getTotalPages());
	    model.addAttribute("currentPage", pageNo);
	    model.addAttribute("list", list.getContent());
	    
		return "/user/jsp/product";
	}

//	@ModelAttribute("item")
//	public List<Product_Entity> listitem() {
//		return daoProduct.findAll();
//	}

	@RequestMapping("/form-search")
	public String search(Model model, @RequestParam("keyword") String keyword, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo) {
		/* List<Product_Entity> sp = daoProduct.findAll(); */
		List<Product_Entity> search = daoProduct.product_search(keyword);
		model.addAttribute("list", search);
		Page<Product_Entity> list = this.ProductService.getAll(pageNo);
		model.addAttribute("totalPage", list.getTotalPages());
	    model.addAttribute("currentPage", pageNo);
		/* model.addAttribute("list", list.getContent()); */
		return "/user/jsp/product";
	}

	/*
	 * @GetMapping("/sap-xep/product/caothap") public String sap_xep_cao_thap(Model
	 * model, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo) {
	 * List<Product_Entity> lists = daoProduct.product_sxcao_thap();
	 * model.addAttribute("list", lists); Page<Product_Entity> list =
	 * this.ProductService.getAll(pageNo); model.addAttribute("totalPage",
	 * list.getTotalPages()); model.addAttribute("currentPage", pageNo); return
	 * "/user/jsp/product"; }
	 * 
	 * @GetMapping("/sap-xep/product/thapcao") public String sap_xep_thap_cao(Model
	 * model, @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo) {
	 * List<Product_Entity> lists = daoProduct.product_sxthap_cao();
	 * model.addAttribute("list", lists);
	 * 
	 * Page<Product_Entity> list = this.ProductService.getAll(pageNo);
	 * model.addAttribute("totalPage", list.getTotalPages());
	 * model.addAttribute("currentPage", pageNo); return "/user/jsp/product"; }
	 */
	
	@GetMapping("/sap-xep/product")
	public String sap_xep_product(Model model,
	                               @RequestParam(name = "pageNo", defaultValue = "1") Integer pageNo,
	                               @RequestParam(name = "sortType", defaultValue = "caothap") String sortType) {
	    List<Product_Entity> lists;

	    if ("caothap".equals(sortType)) {
	        lists = daoProduct.product_sxcao_thap();
	    } else if ("thapcao".equals(sortType)) {
	        lists = daoProduct.product_sxthap_cao();
	    } else {
	        // Mặc định hoặc các loại sắp xếp khác
	        lists = daoProduct.product_macdinh();
	    }

	    model.addAttribute("list", lists);

	    Page<Product_Entity> pageList = this.ProductService.getAll(pageNo);
	    model.addAttribute("totalPage", pageList.getTotalPages());
	    model.addAttribute("currentPage", pageNo);

	    return "/user/jsp/product";
	}
	
	@RequestMapping("/locsanpham")
	public String loc(Model model,@Param("colorId") Integer c,@Param("sizeId") Integer s) {
		List<Product_Entity> listp = daoProduct.loc(1,1);
		model.addAttribute("list", listp);
		return"/user/jsp/product";
	}
}
