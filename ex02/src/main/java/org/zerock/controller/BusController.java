package org.zerock.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.zerock.service.CustomerService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/bus/*")
@AllArgsConstructor
public class BusController {
	
	@GetMapping("/busGJ")
	public void busGJ() {

	}
	
	@GetMapping("/busAT")
	public void busAT() {

	}
	
	@GetMapping("/busMP")
	public void busMP() {

	}
	
	@GetMapping("/busJW")
	public void busJW() {

	}
	
	@GetMapping("/busE")
	public void busE() {

	}
	
	@GetMapping("/bus200")
	public void bus200() {

	}
	
	@GetMapping("/busTime")
	public void busTime() {

	}
	
	@GetMapping("/busNara")
	public void busNara() {

	}
	
	@GetMapping("/busNew")
	public void busNew() {

	}
	
	@GetMapping("/busMU")
	public void busMU() {

	}
	

}
