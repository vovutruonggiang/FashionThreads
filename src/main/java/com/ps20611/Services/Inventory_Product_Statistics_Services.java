package com.ps20611.Services;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ps20611.Admin_DAO.Inventory_Product_Statistics_DAO;

@Service
public class Inventory_Product_Statistics_Services {

	@Autowired(required = true)
	Inventory_Product_Statistics_DAO inventoryProductStatisticsRepository;

	public List<Object[]> getCustomProductDetails() {
		return inventoryProductStatisticsRepository.getCustomProductDetails();
	}

	public Long getProductCountWithQuantityGreaterThanZero() {
		return inventoryProductStatisticsRepository.getProductCountWithQuantityGreaterThanZero();
	}

	public Long getProductCountWithQuantity() {
		return inventoryProductStatisticsRepository.getProductCountWithQuantity();
	}
}
