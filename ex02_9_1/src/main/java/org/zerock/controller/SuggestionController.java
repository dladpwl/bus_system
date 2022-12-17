package org.zerock.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.SuggestionVO;
import org.zerock.domain.Criteria;
import org.zerock.domain.PageDTO;
import org.zerock.service.SuggestionService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/suggestion/*")
@AllArgsConstructor
public class SuggestionController {

	 private SuggestionService service;

	 @GetMapping("/register")
		public void register() {

		}
	 
	 @GetMapping("/list")
	 public void list(Criteria cri, Model model) {
	
		 log.info("list: " + cri);
		 model.addAttribute("list", service.getList(cri));
		 //model.addAttribute("pageMaker", new PageDTO(cri, 123));
		 int total = service.getTotal(cri);
		 log.info("total: "+total);
		 model.addAttribute("pageMaker", new PageDTO(cri, total));
	 }

	@PostMapping("/register")
	public String register(SuggestionVO suggestion, RedirectAttributes rttr) {

		log.info("register: " + suggestion);

		service.register(suggestion);

		rttr.addFlashAttribute("result", suggestion.getBno());

		return "redirect:/suggestion/list";
	}

	@GetMapping( {"/get", "/modify"} )
	 public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) {
		 log.info("/get or modify");
		 model.addAttribute("suggestion", service.get(bno));
	 }

	@PostMapping("/modify")
	public String modify(SuggestionVO suggestion, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {
		log.info("modify:" + suggestion);

		if (service.modify(suggestion)) {
			rttr.addFlashAttribute("result", "success");
		}

		rttr.addAttribute("pageNum", cri.getPageNum());
		rttr.addAttribute("amount", cri.getAmount());

		return "redirect:/suggestion/list";
	}

	 @PostMapping("/remove")
		public String remove(@RequestParam("bno") Long bno, Criteria cri, RedirectAttributes rttr) {

			log.info("remove..." + bno);
			if (service.remove(bno)) {
				rttr.addFlashAttribute("result", "success");
			}
			rttr.addAttribute("pageNum", cri.getPageNum());
			rttr.addAttribute("amount", cri.getAmount());

			return "redirect:/suggestion/list";
		}

}
