package com.ps20611.Admin_DAO;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Color_Entity;

@Repository
public interface Color_DAO extends JpaRepository<Color_Entity, Integer> {
	@Query("SELECT c.img_color\r\n" + "FROM Color_Entity c\r\n" + "INNER JOIN c.detailedProducts_Color p\r\n"
			+ "WHERE p.product_id.id = ?1 \r\n" + "GROUP BY c.img_color, p.product_id.id ORDER BY  c.img_color DESC")
	List<Object[]> findmau(Integer id);

	@Query("SELECT c.img_color\r\n" + "FROM Color_Entity c\r\n" + "INNER JOIN c.detailedProducts_Color p\r\n"
			+ "GROUP BY c.img_color, p.product_id.id ORDER BY  c.img_color DESC")
	List<Object[]> findcolor();

}
