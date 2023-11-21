package com.ps20611.Admin_DAO;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.ps20611.Entity.Status_Entity;

public interface Status_DAO extends JpaRepository<Status_Entity, String> {

	@Query("select s from Status_Entity s where s.id like '%SP%'")
	List<Status_Entity> listStatatus();
}
