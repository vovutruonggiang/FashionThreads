package com.ps20611.Admin_DAO;

import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Evaluate_Entity;

@Repository
public interface Evaluate_DAO extends JpaRepository<Evaluate_Entity, Integer> {

	@Query("FROM Evaluate_Entity WHERE modification_date = :modificationDate")
	List<Evaluate_Entity> findByModificationDate(@Param("modificationDate") Date modificationDate);

	@Query("FROM Evaluate_Entity WHERE modification_date = :assessmentDate")
	List<Evaluate_Entity> findByAssessmentDate(@Param("assessmentDate") Date assessmentDate);
}
