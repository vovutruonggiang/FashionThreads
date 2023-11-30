package com.ps20611.Entity;

import java.io.Serializable;
import java.util.List;
import org.springframework.stereotype.Component;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
@Component
@SuppressWarnings("serial")
@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "account")
public class Account_Entity implements Serializable {

	@Id
	private String username;
	private String password;
	@ManyToOne 
	@JoinColumn(name = "staff_id" )
	private Staff_Entity staff;
	
	@OneToMany(mappedBy = "account",fetch = FetchType.EAGER)
	List<Authorities_Entity> authorities;
	
	@OneToMany(mappedBy = "account_id")
	List<Favourite_Entity> favourite ;
	
}
