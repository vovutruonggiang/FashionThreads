package com.ps20611.Entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "invoice")
public class Invoice_Entity implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name = "staff_id")
	private Staff_Entity staff_id;
	@ManyToOne
	@JoinColumn(name = "discount_id")
	private Discount_Entity discount_id;
	private String delivery_address;
	@Temporal(TemporalType.DATE)
	private Date order_date;
	private String payment_methods;
	@Temporal(TemporalType.DATE)
	private Date date_of_payment;
	private float total_amount;
	@OneToMany(mappedBy = "invoice_id")
	List<Detailed_Invoice_Entity> detailedInvoice_Invoice;
	
	@ManyToOne 
	@JoinColumn (name = "status_id")
	private Status_Entity status;
	
}
