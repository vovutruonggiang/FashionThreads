package com.ps20611.Entity;

import java.io.Serializable;
import java.util.List;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.OneToOne;
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
@Table(name = "customer")
public class Customer_Entity implements Serializable {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String fullname;
	private String phone_number;
	private String address;
	private Boolean sex;
	@Temporal(TemporalType.DATE)
	private String years;
	private String email;
	@ManyToOne
	@JoinColumn(name = "status_id")
	private Status_Entity status_id;
	@OneToMany(mappedBy = "customer_id")
	List<Evaluate_Entity> evaluate_Customer;
	@OneToOne(mappedBy = "customers")
	Carts_Entity cart;

}
