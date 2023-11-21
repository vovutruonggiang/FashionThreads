package com.ps20611.Admin_DAO;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps20611.Entity.CartItems_Entity;

public interface Cart_Item_DAO extends JpaRepository<CartItems_Entity, Integer> {
	@Query("SELECT c FROM CartItems_Entity c WHERE c.product.id = ?1 AND c.color LIKE ?2 AND c.size LIKE ?3")
	CartItems_Entity cartEntity(Integer id, String color, String size);

	@Query("SELECT c FROM CartItems_Entity c WHERE c.cart.id = ?1")
	List<CartItems_Entity> getAllcartEntity(Integer id);
	
	@Query("SELECT c FROM CartItems_Entity c WHERE c.product.id = ?1")
	CartItems_Entity findByCartItem(Integer id);
	
	void deleteAll();
}