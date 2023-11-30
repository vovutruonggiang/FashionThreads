package com.ps20611.Admin_DAO;

import java.sql.Date;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ps20611.Entity.Account_Entity;
import com.ps20611.Entity.Invoice_Entity;
 
public interface Invoice_DAO extends JpaRepository<Invoice_Entity, Integer> {

	@Query("select i from Invoice_Entity i where i.order_date = :ngayMua OR i.date_of_payment = :ngayMua")
	List<Invoice_Entity> findInvoicesByDate(@Param("ngayMua") Date ngayMua);
	
	@Query("select d from Invoice_Entity d where d.status.id like '%DH1%' and staff_id.id = ?1")
	List<Invoice_Entity> listhd(Integer id);
	
	@Query("select d from Invoice_Entity d where d.status.id like '%DH2%' and staff_id.id = ?1")
	List<Invoice_Entity> listhd2(Integer id);
	
	@Query("select d from Invoice_Entity d where d.status.id like '%DH3%' and staff_id.id = ?1")
	List<Invoice_Entity> listhd3(Integer id);

	@Query("select d from Invoice_Entity d where d.status.id like '%DH4%' and staff_id.id = ?1")
	List<Invoice_Entity> listhd4(Integer id);
	
	@Query("select d from Invoice_Entity d where d.status.id like '%DH5%' and staff_id.id = ?1")
	List<Invoice_Entity> listhd5(Integer id);
	
	@Query("select d from Invoice_Entity d where d.status.id like '%DH6%' and staff_id.id = ?1")
	List<Invoice_Entity> listhd6(Integer id);
	
	@Query("select d from Invoice_Entity d where d.status.id like '%DH7%' and staff_id.id = ?1")
	List<Invoice_Entity> listhd7(Integer id);
	
	@Query("select d from Invoice_Entity d where id = ?1")
	List<Invoice_Entity> listhd8(Integer id);
	
	@Query("select d from Invoice_Entity d where staff_id.id = ?1")
	List<Invoice_Entity> listhdac(Integer id);
}
