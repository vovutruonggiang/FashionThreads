package com.ps20611.Services;

import java.math.BigDecimal;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ps20611.Admin_DAO.Revenue_Statistics_DAO;
import com.ps20611.Entity.Invoice_Entity;

@Service
public class Revenue_Statistics_Services {

	@Autowired
	private Revenue_Statistics_DAO revenue_Statistics_DAO;

	public BigDecimal getTotalAmountSum() {
		return revenue_Statistics_DAO.getTotalAmountSum();
	}

	public List<Invoice_Entity> findInvoicesByDate(Date ngayMua) {
		return revenue_Statistics_DAO.findInvoicesByDates(ngayMua);
	}

	public double calculateTotalAmount(List<Invoice_Entity> invoices) {
		double totalAmount = 0.0;
		for (Invoice_Entity invoice : invoices) {
			totalAmount += invoice.getTotal_amount();
		}
		return totalAmount;
	}

	public List<Invoice_Entity> findInvoicesWithinLast30Days() {
		Date startDate = calculateStartDateLast30(); // Định nghĩa hàm tính toán ngày 30 ngày trước
		return revenue_Statistics_DAO.findInvoicesWithinLast30Days(startDate);
	}

	public List<Invoice_Entity> findInvoicesWithinLast15Days() {
		Date startDate = calculateStartDateLast15();
		return revenue_Statistics_DAO.findInvoicesWithinLast30Days(startDate);
	}

	public List<Invoice_Entity> findInvoicesWithinLast7Days() {
		Date startDate = calculateStartDateLast7();
		return revenue_Statistics_DAO.findInvoicesWithinLast30Days(startDate);
	}

	public List<Invoice_Entity> findInvoicesWithinLast1Days() {
		Date startDate = calculateStartDateLast1();
		return revenue_Statistics_DAO.findInvoicesWithinLast30Days(startDate);
	}

	private Date calculateStartDateLast30() {
		// Tính toán ngày 30 ngày trước
		// có thể sử dụng thư viện java.util.Calendar hoặc java.time.LocalDate
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_MONTH, -30);
		return calendar.getTime();
	}

	private Date calculateStartDateLast15() {
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_MONTH, -15);
		return calendar.getTime();
	}

	private Date calculateStartDateLast7() {
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_MONTH, -7);
		return calendar.getTime();
	}

	private Date calculateStartDateLast1() {
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_MONTH, -1);
		return calendar.getTime();
	}

	public List<Invoice_Entity> findInvoicesToday() {
		return revenue_Statistics_DAO.findInvoicesToday();
	}

	public List<Double> getTotalAmountsByWeek() {
	    // Lấy ngày đầu tiên của tuần
	    LocalDate startDate = LocalDate.now().with(DayOfWeek.MONDAY);

	    // Khởi tạo mảng để lưu tổng tiền cho từng ngày trong tuần
	    List<Double> totalAmounts = new ArrayList<>();

	    for (int i = 0; i < 7; i++) {
	        LocalDate currentDate = startDate.plusDays(i);

	        // Chuyển đổi từ LocalDate sang java.util.Date
	        Date utilDate = Date.from(currentDate.atStartOfDay(ZoneId.systemDefault()).toInstant());

	        Double totalAmount = revenue_Statistics_DAO.getTotalAmountByDate(utilDate);
	        totalAmounts.add(totalAmount != null ? totalAmount : 0.0);
	    }

	    return totalAmounts;
	}
}
