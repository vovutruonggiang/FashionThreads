package com.ps20611.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps20611.Admin_DAO.Customer_DAO;
import com.ps20611.Entity.Status_Entity;
import jakarta.transaction.Transactional;

@Service
public class Customer_Services {

	@Autowired
	Customer_DAO customer_DAO;

	@Transactional
	public int updateStatusCustomer(Status_Entity status_id, Integer customerID) {
		return customer_DAO.updateCustomerStatus(status_id, customerID);
	}
}
