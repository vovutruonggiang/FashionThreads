package com.ps20611.Services;

import java.util.List;

import org.springframework.data.domain.Page;

import com.ps20611.Entity.Product_Entity;

public interface productService {
	List<Product_Entity> getAll();
	List<Product_Entity> searchProduct(String keyword);
	Page<Product_Entity> getAll(Integer pageNo);
}
