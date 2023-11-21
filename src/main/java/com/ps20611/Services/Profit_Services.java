package com.ps20611.Services;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ps20611.Admin_DAO.Profit_DAO;

@Service
public class Profit_Services {

	@Autowired
	Profit_DAO profit_DAO;

	public List<Object[]> getProfit() {
		return profit_DAO.getProfit();
	}

	public List<Object[]> searchByDateRange(Date order_dates) {
		return profit_DAO.searchByDateRange(order_dates);
	}

	public List<Object[]> getProfitLast30Days() {
		// Tính toán ngày 30 ngày trước
		LocalDate thirtyDaysAgo = LocalDate.now().minusDays(30);

		return profit_DAO.getProfitLast30Days(thirtyDaysAgo);
	}

	public List<Object[]> getProfitLast15Days() {
		LocalDate thirtyDaysAgo = LocalDate.now().minusDays(15);

		return profit_DAO.getProfitLast30Days(thirtyDaysAgo);
	}

	public List<Object[]> getProfitLast7Days() {
		LocalDate thirtyDaysAgo = LocalDate.now().minusDays(7);

		return profit_DAO.getProfitLast30Days(thirtyDaysAgo);
	}

	public List<Object[]> getProfitLast1Days() {
		LocalDate thirtyDaysAgo = LocalDate.now().minusDays(1);

		return profit_DAO.getProfitLast30Days(thirtyDaysAgo);
	}

	public List<Object[]> getProfitToday() {
		// Lấy ngày hiện tại
		LocalDate today = LocalDate.now();

		return profit_DAO.getProfitToDay(today);
	}
}
