package com.ps20611.Admin_DAO;

import java.util.List;
import java.util.Set;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Detailed_Products_Entity;
import com.ps20611.Entity.Product_Entity;

@Repository
public interface Product_Detail_DAO extends JpaRepository<Detailed_Products_Entity, Integer> {

	@Query("SELECT c.img_color FROM Detailed_Products_Entity d INNER JOIN  d.color_id c GROUP BY c.img_color , d.product_id.id ")

	List<Object[]> findcolor();

	@Query("SELECT d.product_id.id  FROM Detailed_Products_Entity d INNER JOIN  d.color_id c GROUP BY  d.product_id.id ")

	List<Object[]> findcolors();

	@Query("SELECT d FROM Detailed_Products_Entity d")
	Set<Detailed_Products_Entity> getALL();
//	@Query("SELECT c.img_color\r\n" + "FROM Color_Entity c\r\n" + "INNER JOIN c.detailedProducts_Color p\r\n"
//			 + "GROUP BY c.img_color, p.product_id.id ORDER BY  c.img_color DESC")
//		List<Object[]> findcolor();
	
	
	@Query(value = "SELECT * FROM product\r\n"
			+ "WHERE date_create >= DATEADD(DAY, -30, GETDATE());",
			nativeQuery = true)
	List<Product_Entity> list_new_product();
}
