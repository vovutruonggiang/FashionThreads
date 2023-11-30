package com.ps20611.Services;

import java.util.Collection;
import java.util.Set;
import java.util.stream.Collector;
import java.util.stream.Collectors;

import org.hibernate.internal.build.AllowSysOut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.core.GrantedAuthorityDefaults;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.ps20611.Admin_DAO.Account_DAO;
import com.ps20611.Entity.Account_Entity;

@Service
public class CustomerUserDetailsService implements UserDetailsService {
	@Autowired
	Account_DAO accDao;
	 
	 
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
		Account_Entity acc = accDao.findByUsername(username);
		 
		 
		acc.setPassword(passwordEncoder.encode(acc.getPassword()));
	 
		Set<GrantedAuthority> authorites = acc.getAuthorities().stream()
				.map((role) -> new SimpleGrantedAuthority(role.getRole().getName_role())).collect(Collectors.toSet());
		return new UserDetails() {

			 

			@Override
			public String getUsername() {
				// TODO Auto-generated method stub
				return   acc.getUsername();
			}

			@Override
			public String getPassword() {
				// TODO Auto-generated method stub
				return acc.getPassword();
			}

			@Override
			public Collection<? extends GrantedAuthority> getAuthorities() {
				// TODO Auto-generated method stub
				return authorites;
			}

			@Override
			public boolean isAccountNonExpired() {
				// TODO Auto-generated method stub
				return true;
			}

			@Override
			public boolean isAccountNonLocked() {
				// TODO Auto-generated method stub
				return true;
			}

			@Override
			public boolean isCredentialsNonExpired() {
				// TODO Auto-generated method stub
				return true;
			}

			@Override
			public boolean isEnabled() {
				// TODO Auto-generated method stub
				return true;
			}
		};
	}

}
