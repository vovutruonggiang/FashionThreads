package com.ps20611.Admin_DAO;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps20611.Entity.Size_Entity;

public interface Size_DAO extends JpaRepository<Size_Entity, Integer> {
	@Query("SELECT s.size_name\r\n" + "FROM Size_Entity s\r\n" + "INNER JOIN s.detailedProducts_Size p\r\n"
			+ "WHERE p.product_id.id = ?1 \r\n" + "GROUP BY s.size_name, p.product_id.id ORDER BY  s.size_name DESC")
	List<Object[]> findkichthuoc(Integer id);
}
