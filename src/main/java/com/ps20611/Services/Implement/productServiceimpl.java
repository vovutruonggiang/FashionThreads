package com.ps20611.Services.Implement;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Entity.Product_Entity;
import com.ps20611.Services.productService;
@Service
public class productServiceimpl implements productService {
	@Autowired
	Product_DAO productRepository;
	
	@Override
	public List<Product_Entity> getAll(){
		return this.productRepository.findAll();
	}

	@Override
	public Page<Product_Entity> getAll(Integer pageNo) {
		// TODO Auto-generated method stub
		Pageable pageable = PageRequest.of(pageNo-1, 8);
		return this.productRepository.findAll(pageable);
	}

	@Override
	public List<Product_Entity> searchProduct(String keyword) {
		// TODO Auto-generated method stub
		return productRepository.product_search(keyword);
	}
}
