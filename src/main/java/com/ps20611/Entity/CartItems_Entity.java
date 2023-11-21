package com.ps20611.Entity;

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

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Table(name="cartitems")
public class CartItems_Entity {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY	)
	Integer id;
	Float price;
	Integer quantity;
	String size;
	String color;

	@ManyToOne
	@JoinColumn(name = "product_id")
	Product_Entity product;

	@ManyToOne
	@JoinColumn(name = "cart_id")
	Carts_Entity cart;

}
