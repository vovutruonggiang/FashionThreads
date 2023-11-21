package com.ps20611.Entity;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name = "product")
public class Product_Entity implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String product_name;
	private String product_description;
	private String image;
	private float import_price;
	private float price;

	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status_Entity status;

	@ManyToOne
	@JoinColumn(name = "brand_id")
	private Brand_Entity brand_id;
	@ManyToOne
	@JoinColumn(name = "category_product_id")
	private Category_Product_Entity category_product;

	private Date date_create;
	@OneToMany(mappedBy = "product_id")
	List<Detailed_Products_Entity> detailedProducts_Product;
	@OneToMany(mappedBy = "product_id")
	List<Evaluate_Entity> evaluate_Product;
	@OneToMany(mappedBy = "product_id")
	List<Favourite_Entity> favourite_Product;
	@OneToMany(mappedBy = "product_id")
	List<Image_Entity> image_product;
	@OneToMany(mappedBy = "product_id")
	List<Detailed_Invoice_Entity> detailed_Invoice_Product;

}