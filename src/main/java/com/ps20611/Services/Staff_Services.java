package com.ps20611.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps20611.Admin_DAO.Staff_DAO;
import com.ps20611.Entity.Status_Entity;

import jakarta.transaction.Transactional;

@Service
public class Staff_Services {

	@Autowired
	Staff_DAO staff_DAO;

	@Transactional
	public int updateStatusStaff(Status_Entity status_id, Integer staffID) {
		return staff_DAO.updateStaffStatus(status_id, staffID);
	}
}
