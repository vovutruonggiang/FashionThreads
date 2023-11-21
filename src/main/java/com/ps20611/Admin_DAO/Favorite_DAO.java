package com.ps20611.Admin_DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ps20611.Entity.Favourite_Entity;

public interface Favorite_DAO extends JpaRepository<Favourite_Entity, Integer>{
//	@Query(value = "INSERT INTO favourite (account_id, product_id) VALUES ('?',?)",
//			nativeQuery = true)
//	List<Product_Entity> list_new_product();
}
