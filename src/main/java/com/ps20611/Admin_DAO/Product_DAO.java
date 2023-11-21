package com.ps20611.Admin_DAO;

import java.util.List;
import java.util.Set;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Product_Entity;

@Repository
public interface Product_DAO extends JpaRepository<Product_Entity, Integer> {

	@Query("select c from Product_Entity c WHERE c.category_product.id = ?1")
	List<Product_Entity> list_product (Integer id);
	
	@Query(value = "SELECT * FROM product\r\n"
			+ "WHERE date_create >= DATEADD(DAY, -30, GETDATE());",
			nativeQuery = true)
	List<Product_Entity> list_new_product();
	
	@Query("select p from Product_Entity p where p.id = ?1")
	List<Product_Entity> listproduct(Integer id);
	
	@Query ("SELECT p FROM Product_Entity p WHERE p.product_name LIKE %?1%")
	List<Product_Entity> product_search(String keywork);
	
	@Query ("SELECT p FROM Product_Entity p ORDER BY p.price DESC")
	List<Product_Entity> product_sxcao_thap();
	
	@Query ("SELECT p FROM Product_Entity p ORDER BY p.price ASC")
	List<Product_Entity> product_sxthap_cao();
	@Query("SELECT p FROM Product_Entity p")
	Set<Product_Entity> getAll();
}
