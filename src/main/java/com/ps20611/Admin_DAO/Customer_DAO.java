package com.ps20611.Admin_DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.ps20611.Entity.Customer_Entity;
import com.ps20611.Entity.Status_Entity;

public interface Customer_DAO extends JpaRepository<Customer_Entity, Integer> {

	@Modifying
	@Query("update Customer_Entity set status_id = :status_id where id = :customerID")
	public int updateCustomerStatus(@Param("status_id") Status_Entity status_id,
			@Param("customerID") Integer customerID);

}
