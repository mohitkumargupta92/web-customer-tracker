package com.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springdemo.entity.Customer;
import com.springdemo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	private CustomerService customerService;

	/* @RequestMapping */@GetMapping("/list")
	public String listCustomers(Model model) {

		List<Customer> customerList = customerService.getCustomers();

		model.addAttribute("customers", customerList);

		return "list-customers";

	}

}
