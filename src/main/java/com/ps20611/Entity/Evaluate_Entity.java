package com.ps20611.Entity;

import java.io.Serializable;
import java.util.Date;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
@Table(name = "evaluate")
public class Evaluate_Entity implements Serializable {

	@Id
	private int id;
	private String image_evaluate;
	private String content_rated;
	private int star_rating;
	@Temporal(TemporalType.DATE)
	private Date assessment_date;
	@Temporal(TemporalType.DATE)
	private Date modification_date;
	@ManyToOne
	@JoinColumn(name = "product_id")
	private Product_Entity product_id;
	@ManyToOne
	@JoinColumn(name = "customer_id")
	private Customer_Entity customer_id;
}
