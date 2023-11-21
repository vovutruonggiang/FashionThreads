package com.ps20611.Services;

import java.sql.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ps20611.Admin_DAO.Invoice_DAO;
import com.ps20611.Entity.Invoice_Entity;

@Service
public class Invoice_Services {

	@Autowired
	Invoice_DAO invoice_DAO;

	public List<Invoice_Entity> findInvoicesByDate(Date ngayMua) {
		return invoice_DAO.findInvoicesByDate(ngayMua);
	}
}
