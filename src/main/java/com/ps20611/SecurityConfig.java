package com.ps20611;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.servlet.util.matcher.MvcRequestMatcher;

import org.springframework.web.servlet.handler.HandlerMappingIntrospector;

import com.ps20611.Services.CustomerUserDetailsService;

@Configuration
@EnableWebSecurity
public class SecurityConfig {
 @Autowired
 CustomerUserDetailsService userDetail;

	@Bean
	public static PasswordEncoder encoder() {
		return new BCryptPasswordEncoder();
	}

	@Bean
	SecurityFilterChain securityFilterChain(HttpSecurity http, HandlerMappingIntrospector introspector)
			throws Exception {
//		http.authorizeHttpRequests((authorize) -> authorize.anyRequest().authenticated())
//				.httpBasic(Customizer.withDefaults());
//		 http
//			.authorizeHttpRequests(authorize -> authorize
//			.requestMatchers(new MvcRequestMatcher(introspector,  "/views/**")).permitAll()
//			.requestMatchers(new MvcRequestMatcher(introspector, "/cart/**")).hasRole("ADMIN")
//			.anyRequest().authenticated()                      
//		).httpBasic(Customizer.withDefaults());
		http.authorizeHttpRequests((authorize)-> authorize.requestMatchers(new MvcRequestMatcher(introspector, "/views/**"),
				new MvcRequestMatcher(introspector, "/product/**"))
		.permitAll()
		.requestMatchers(new MvcRequestMatcher(introspector,"/cart/**")).hasAuthority("admin").anyRequest().authenticated()) 
		.formLogin((customer)-> customer.loginPage("/views/login").loginProcessingUrl("/views/checklogin").defaultSuccessUrl("/cart"));
		return http.build();
	}
}
