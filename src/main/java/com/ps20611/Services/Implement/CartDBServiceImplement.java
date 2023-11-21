package com.ps20611.Services.Implement;

import java.util.Collection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps20611.Admin_DAO.Cart_Item_DAO;
import com.ps20611.Admin_DAO.Carts_DAO;
import com.ps20611.Admin_DAO.Customer_DAO;
import com.ps20611.Admin_DAO.Product_DAO;
import com.ps20611.Entity.CartItems_Entity;
import com.ps20611.Entity.Carts_Entity;
import com.ps20611.Entity.Customer_Entity;
import com.ps20611.Entity.Product_Entity;
import com.ps20611.Services.CartDBService;

@Service
public class CartDBServiceImplement implements CartDBService {

	@Autowired
	Product_DAO proDao;
	@Autowired
	Customer_DAO cusDao;
	@Autowired
	Cart_Item_DAO cartItemDao;
	@Autowired
	Carts_DAO cartDao;

	@SuppressWarnings("deprecation")
	@Override
	public void addCart(Integer customer_id, int pro_id, int quantity, String color, String size) {

		Carts_Entity cart = cartDao.cart(customer_id);
		if (cart == null) {
			cart = new Carts_Entity();
			Customer_Entity customer = cusDao.getById(customer_id);
			cart.setCustomers(customer);

		}
		 
 		
		CartItems_Entity cart_ItemEntity = cartItemDao.cartEntity(pro_id, color, size);

		if (cart_ItemEntity == null) {
 			Product_Entity pro = proDao.getById(pro_id);
			cart_ItemEntity = new CartItems_Entity();
			cart_ItemEntity.setQuantity(quantity);
			cart_ItemEntity.setColor(color);
			cart_ItemEntity.setSize(size);
			cart_ItemEntity.setProduct(pro);
			cart_ItemEntity.setCart(cart);
			cart_ItemEntity.setPrice(pro.getPrice());
		} else {
			cart_ItemEntity.setQuantity(cart_ItemEntity.getQuantity() + 1);
		}
		cartDao.save(cart);

 		cartItemDao.save(cart_ItemEntity);

	}

	@Override
	public Collection<CartItems_Entity> getALLCartEntity() {
		// TODO Auto-generated method stub
		return cartItemDao.findAll();
	}

	@Override
	public void delete(Integer id) {
		 
		cartItemDao.deleteById(id);
	}

}