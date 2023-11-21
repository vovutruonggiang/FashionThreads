package com.ps20611.Services;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ps20611.Admin_DAO.Evaluate_DAO;
import com.ps20611.Entity.Evaluate_Entity;

@Service
public class Evaluate_Services {

	@Autowired
	Evaluate_DAO evaluate_DAO;

	public List<Evaluate_Entity> getEvaluatesByModificationDate(Date modificationDate) {
		return evaluate_DAO.findByModificationDate(modificationDate);
	}

	public List<Evaluate_Entity> getEvaluatesByAssessmentDate(Date assessmentDate) {
		return evaluate_DAO.findByModificationDate(assessmentDate);
	}
}
