package org.zerock.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.Criteria;
import org.zerock.domain.CustomerVO;
import org.zerock.service.CustomerService;


import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/customer/*")
@AllArgsConstructor
public class CustomerController {
	
	private CustomerService service;

	@GetMapping("/register")
	public void register() {

	}
	
	@GetMapping("/login")
	public String login(String email, String passwd, HttpSession session) {
		Long cno = (Long) session.getAttribute("cno");
		if (cno != null) {
			return "/board/main";
		}
		return "/customer/login";
	}
	
	@GetMapping("/")
	public String main(HttpSession session, Model model) {
		Long cno = (Long) session.getAttribute("cno");
		
			if (cno != null) {
				CustomerVO customervo = service.getUserById(cno);
				model.addAttribute("customer", customervo);
				return "main";
			}
			return "redirect:/customer/login";
		}
	
	@GetMapping("/alert")
	public void alert() {
		}
	
	@GetMapping("/alert1")
	public void alert1() {
		}
	
	@GetMapping("/remove")
	public void remove() {

	}
	
	@PostMapping("/login")
	public String login( String email, String passwd,
							HttpSession session,
							RedirectAttributes rttr,HttpServletResponse response) throws IOException {
		log.info("login: " + email + passwd);
		Long cno = service.login(email, passwd);
		if(cno == null) {
			return "redirect:/customer/alert";
		}
		session.setAttribute("cno", cno);
		return "redirect:/board/main";	
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/customer/";
	}

	@PostMapping("/register")
	public String register(CustomerVO customer, String email, RedirectAttributes rttr) {

		log.info("register: " + customer);
		int count =  service.emailCheck(email);
		
		if (count >= 1) {
			return "redirect:/customer/alert1";
		}
		service.register(customer);

		rttr.addFlashAttribute("result", customer.getCno());

		return "redirect:/customer/login";
	}

	 @GetMapping("/get")
	 public void get(@RequestParam("cno") Long cno, Model model) {
		 log.info("/get");
		 model.addAttribute("customer", service.get(cno));
	 }

	 @GetMapping("/modify")
	 public String toModifyPage(HttpSession session, Model model) {
		 Long cno = (Long) session.getAttribute("cno");
		 CustomerVO customer = service.getUserById(cno);
		 model.addAttribute("customer", customer);
		 return "/customer/modify";

	 }
	 
	 @PostMapping("/modify")
	 public String modifyInfo(CustomerVO customer, HttpSession session, RedirectAttributes rttr) {
		 log.info("modify:" + customer);
		
		 Long cno = (Long) session.getAttribute("cno");
		 customer.setCno(cno);
		 service.modifyInfo(customer);
		 return "redirect:/customer/";
	 }

	 
	 @PostMapping("/remove")
	 public String remove(HttpSession session,
			 				RedirectAttributes rttr)
	 {
		 log.info("remove...");
		 Long cno = (Long) session.getAttribute("cno");
		 if (cno != null) {
			 service.remove(cno);
		 }
		session.invalidate();
		return "redirect:/customer/";
}
	 
}



