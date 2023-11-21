package com.ps20611.Admin_DAO;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.util.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Invoice_Entity;

@Repository
public interface Revenue_Statistics_DAO extends JpaRepository<Invoice_Entity, Integer> {

	String SUM_TOTAL_AMOUNT_QUERY = "SELECT SUM(i.total_amount) FROM Invoice_Entity i";

	@Query(SUM_TOTAL_AMOUNT_QUERY)
	BigDecimal getTotalAmountSum();

	@Query("select i from Invoice_Entity i where i.order_date = :ngayMua OR i.date_of_payment = :ngayMua")
	List<Invoice_Entity> findInvoicesByDates(@Param("ngayMua") Date ngayMua);

	@Query("SELECT i FROM Invoice_Entity i WHERE i.order_date >= :startDate OR i.date_of_payment >= :startDate")
	List<Invoice_Entity> findInvoicesWithinLast30Days(@Param("startDate") Date startDate);

	@Query("SELECT i FROM Invoice_Entity i WHERE i.order_date >= CURRENT_DATE OR i.date_of_payment >= CURRENT_DATE")
	List<Invoice_Entity> findInvoicesToday();

	@Query("SELECT SUM(i.total_amount) FROM Invoice_Entity i WHERE i.date_of_payment = :selectedDate")
	Double getTotalAmountByDate(@Param("selectedDate") Date utilDate);
}
