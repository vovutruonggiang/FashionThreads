package com.ps20611.Entity;

import java.io.Serializable;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@SuppressWarnings("serial")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "detailed_invoice")
public class Detailed_Invoice_Entity implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product_Entity product_id;
	
	private String color;
	private String size;
	private float price;
	private int quanlity;
	@ManyToOne
	@JoinColumn(name = "invoice_id")
	private Invoice_Entity invoice_id;
	@ManyToOne
	@JoinColumn(name = "discount_id")
	private Discount_Entity discount_id;
}
