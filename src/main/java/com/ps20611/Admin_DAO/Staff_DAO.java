package com.ps20611.Admin_DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Staff_Entity;
import com.ps20611.Entity.Status_Entity;

@Repository
public interface Staff_DAO extends JpaRepository<Staff_Entity, Integer> {

	@Modifying
	@Query("update Staff_Entity set status_id = :status_id where id = :staffID")
	public int updateStaffStatus(@Param("status_id") Status_Entity status_id, @Param("staffID") Integer staffID);
}
