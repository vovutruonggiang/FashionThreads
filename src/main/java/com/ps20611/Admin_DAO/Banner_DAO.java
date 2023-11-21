package com.ps20611.Admin_DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import com.ps20611.Entity.Banner_Entity;
import com.ps20611.Entity.Status_Entity;

public interface Banner_DAO extends JpaRepository<Banner_Entity, Integer> {

	@Modifying
	@Query("update Banner_Entity set status_id = :status_id where id = :bannerID")
	public int updateBannerStatus(@Param("status_id") Status_Entity status_id, @Param("bannerID") Integer bannerID);
}
