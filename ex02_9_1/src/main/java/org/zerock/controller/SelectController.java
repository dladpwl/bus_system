package org.zerock.controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.*;
import org.zerock.mapper.BusMapper;
import org.zerock.service.*;


import lombok.AllArgsConstructor;

import org.springframework.ui.Model;


@Controller
@AllArgsConstructor
@RequestMapping("/select/*")

public class SelectController {
	
	private BusService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", service.getList());
	}

	@GetMapping("/resinfo")
	public void resinfo( ) {
	
	}
	@PostMapping("/resinfo")
	public String resinfo(String origin, String destination) {
		
		return "/select/list";
	}
	@PostMapping("/resinfo_porcess")
	public void resinfo_process() {
		
	}
	@GetMapping("/seat")
	public void seat() {
	}
		
}
