package com.ps20611.Admin_DAO;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.ps20611.Entity.Category_Product_Entity;

public interface Category_Product_DAO extends JpaRepository<Category_Product_Entity, Integer> {
	
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = ?1")
	List<Category_Product_Entity> list_category_product(Integer id);
}
