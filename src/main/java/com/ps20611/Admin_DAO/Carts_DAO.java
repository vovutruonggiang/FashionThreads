package com.ps20611.Admin_DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Carts_Entity;

@Repository
public interface Carts_DAO extends JpaRepository<Carts_Entity, Integer> {
	@Query("SELECT c FROM Carts_Entity c WHERE c.customers.id = ?1")
	Carts_Entity cart(Integer customer_id);
}