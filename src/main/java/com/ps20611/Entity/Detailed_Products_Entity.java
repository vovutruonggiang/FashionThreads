package com.ps20611.Entity;

import java.io.Serializable;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
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
@Table(name = "detailed_products")
public class Detailed_Products_Entity implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product_Entity product_id;
	@ManyToOne
	@JoinColumn(name = "color_id")
	private Color_Entity color_id;
	@ManyToOne
	@JoinColumn(name = "size_id")
	private Size_Entity size_id;
	private int quantity;
}
