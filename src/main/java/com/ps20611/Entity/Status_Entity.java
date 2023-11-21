package com.ps20611.Entity;

import java.io.Serializable;
import java.util.List;
import jakarta.persistence.Entity;
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
@Table(name = "status")
public class Status_Entity implements Serializable {

	@Id
	private String id;
	private String status_name;
	@OneToMany(mappedBy = "status_id")
	List<Staff_Entity> staff_Status;
	@OneToMany(mappedBy = "status_id")
	List<Customer_Entity> customer_Status;
	@OneToMany(mappedBy = "status_id")
	List<Banner_Entity> banner_Status;
	 
	@OneToMany(mappedBy = "status")
	List<Product_Entity> product;
	
	@OneToMany(mappedBy = "status")
	List<Invoice_Entity> invoice ;
}
