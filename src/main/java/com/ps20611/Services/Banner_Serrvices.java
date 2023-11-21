package com.ps20611.Services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps20611.Admin_DAO.Banner_DAO;
import com.ps20611.Entity.Status_Entity;
import jakarta.transaction.Transactional;

@Service
public class Banner_Serrvices {

	@Autowired
	Banner_DAO banner_DAO;

	@Transactional
	public int updateStatusCustomer(Status_Entity status_id, Integer bannerID) {
		return banner_DAO.updateBannerStatus(status_id, bannerID);
	}
}
