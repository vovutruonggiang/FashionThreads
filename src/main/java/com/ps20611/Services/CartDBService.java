package com.ps20611.Services;

import java.util.Collection;

import org.springframework.stereotype.Component;

import com.ps20611.Entity.CartItems_Entity;
 

@Component
public interface CartDBService {

	void addCart(Integer customer_id, int pro_id, int quantity, String color, String size);

	Collection<CartItems_Entity> getALLCartEntity();

	void delete(Integer id);  
}
