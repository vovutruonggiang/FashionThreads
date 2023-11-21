package com.ps20611.Admin_DAO;

import java.util.List;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import com.ps20611.Entity.Detailed_Invoice_Entity;

@Repository
public interface Invoice_Detail_DAO extends JpaRepository<Detailed_Invoice_Entity, Integer> {

	@Query("SELECT d FROM Detailed_Invoice_Entity d WHERE d.invoice_id.id = ?1")
	List<Detailed_Invoice_Entity> getDetailById(Optional<Integer> id);
	
	@Query("SELECT d FROM Detailed_Invoice_Entity d WHERE d.invoice_id.id = ?1 ")
	List<Detailed_Invoice_Entity> getAllOrderDetailByID(Integer id);
	
	@Query("SELECT d FROM Detailed_Invoice_Entity d WHERE d.invoice_id.id = ?1 ")
	List<Detailed_Invoice_Entity> findInvoiceByID(Integer id);
}
