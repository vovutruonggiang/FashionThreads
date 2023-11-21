package com.ps20611.Entity;

import java.io.Serializable;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "discount")
public class Discount_Entity implements Serializable {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private int id;
	private String discount_name;
	private String start_day;
	private String end_day;
	private int value;
	private String unit;
	private String descriptions;
	@OneToMany (mappedBy = "discount_id")
	List<Invoice_Entity> invoice_Discount;
	@OneToMany (mappedBy = "discount_id")
	List<Detailed_Invoice_Entity> detailedInvoice_Discount;
}
