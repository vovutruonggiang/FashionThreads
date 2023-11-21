package com.ps20611.Admin_DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Discount_Entity;

@Repository
public interface Discount_DAO extends JpaRepository<Discount_Entity, Integer> {
}
