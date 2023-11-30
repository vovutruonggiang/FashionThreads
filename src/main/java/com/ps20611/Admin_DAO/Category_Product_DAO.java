package com.ps20611.Admin_DAO;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.ps20611.Entity.Category_Product_Entity;

public interface Category_Product_DAO extends JpaRepository<Category_Product_Entity, Integer> {
	
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = 1")
	List<Category_Product_Entity> list_Ao();
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = 2")
	List<Category_Product_Entity> list_Aokhoac();
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = 6")
	List<Category_Product_Entity> list_Aodai();
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = 7")
	List<Category_Product_Entity> list_setbo();
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = 8")
	List<Category_Product_Entity> list_quan();
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = 9")
	List<Category_Product_Entity> list_chanvay();
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = 10")
	List<Category_Product_Entity> list_dam();
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = 11")
	List<Category_Product_Entity> list_senora();
	@Query("select c from Category_Product_Entity c WHERE c.category_product_type.id = ?1")
	List<Category_Product_Entity> list_category_product(Integer id);
}
