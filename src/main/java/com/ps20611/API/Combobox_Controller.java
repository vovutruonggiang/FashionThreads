package com.ps20611.API;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.ps20611.Admin_DAO.Category_Product_DAO;
import com.ps20611.Admin_DAO.Category_Product_Type_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Entity.Category_Product_Entity;
import com.ps20611.Entity.Category_Product_Type_Entity;
import com.ps20611.Entity.Product_Entity;

@RestController
@RequestMapping("/api")
public class Combobox_Controller {

	@Autowired
	Category_Product_Type_DAO category_product_type_dao;

	@Autowired
	Category_Product_DAO category_product_dao;

	@Autowired
	Product_DAO product_dao;

	@GetMapping("/districts")
	public List<Map<String, Object>> getDistrictsByProvince(@RequestParam("provinceId") Integer provinceId) {
		List<Category_Product_Type_Entity> category_product_type_list = category_product_type_dao
				.list_category_product_type(provinceId);
		List<Map<String, Object>> result = new ArrayList<>();
		for (Category_Product_Type_Entity dmc : category_product_type_list) {
			Map<String, Object> category_product_typeMap = new HashMap<>();
			category_product_typeMap.put("id", dmc.getId());
			category_product_typeMap.put("name_category_product_type", dmc.getName_category_product_type());
			result.add(category_product_typeMap);
			System.out.println(provinceId);
		}
		return result;
	}

	@GetMapping("/districts2")
	public List<Map<String, Object>> getDistrictsByProvince2(@RequestParam("provinceId2") Integer provinceId2) {
		List<Category_Product_Entity> category_product_list = category_product_dao.list_category_product(provinceId2);
		List<Map<String, Object>> result = new ArrayList<>();
		for (Category_Product_Entity dmc : category_product_list) {
			Map<String, Object> category_producMap = new HashMap<>();
			category_producMap.put("id", dmc.getId());
			category_producMap.put("name_category_product", dmc.getName_category_product());
			result.add(category_producMap);
			System.out.println(provinceId2);
		}
		return result;
	}

	@GetMapping("/districts3")
	public List<Map<String, Object>> getDistrictsByProvince3(@RequestParam("provinceId3") Integer provinceId3) {
		List<Product_Entity> product_list = product_dao.list_product(provinceId3);
		List<Map<String, Object>> result = new ArrayList<>();
		for (Product_Entity dmc : product_list) {
			Map<String, Object> category_producMap = new HashMap<>();
			category_producMap.put("id", dmc.getId());
			category_producMap.put("product_name", dmc.getProduct_name());
			result.add(category_producMap);
			System.out.println(provinceId3);
		}
		return result;
	}
}