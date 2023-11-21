package com.ps20611.Admin_DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Account_Entity;

@Repository
public interface Account_DAO extends JpaRepository<Account_Entity, String> {
	@Query("SELECT a FROM Account_Entity a WHERE a.username = %?1% AND  a.password = %?2%	 ")
	Account_Entity find(String u,String pass);
}