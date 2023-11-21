package com.ps20611.Admin_DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Category_Menu_Entity;

@Repository
public interface Category_Menu_DAO extends JpaRepository<Category_Menu_Entity, Integer> {

}
