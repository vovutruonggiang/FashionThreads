package com.ps20611.Admin_DAO;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.ps20611.Entity.Role_Entity;
import java.util.List;


public interface Role_DAO extends JpaRepository<Role_Entity, Integer> {
 
}
