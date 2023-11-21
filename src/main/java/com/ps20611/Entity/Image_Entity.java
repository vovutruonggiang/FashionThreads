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
@Table(name = "images")
public class Image_Entity implements Serializable {

	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private String id;
	private String image_name;
	@ManyToOne @JoinColumn(name = "product_id")
	private Product_Entity product_id;
}
