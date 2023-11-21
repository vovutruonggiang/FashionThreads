package com.ps20611.Services;

import java.io.UnsupportedEncodingException;

import org.springframework.stereotype.Component;

@Component
public interface PaymentService {
	String payment() throws UnsupportedEncodingException;
}