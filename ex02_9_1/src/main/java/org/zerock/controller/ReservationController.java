package org.zerock.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.zerock.domain.*;
import org.zerock.mapper.ReservationMapper;
import org.zerock.service.*;

import lombok.AllArgsConstructor;

import org.springframework.ui.Model;


@Controller

@AllArgsConstructor
@RequestMapping("/reservation/*")
public class ReservationController {
	
	//private SeatService seatService;
	//ÁÂ¼®¿¹¾à
	//@GetMapping("seat")
	//ÁÂ¼® µî·Ï
	//public void getSeat(Model model) {
		//model.addAttribute("seatList", seatService.getAllList());
		//model.addAttribute("regList", reservationService.getAllList());
	//}
	
	//ÁÂ¼® ¿¹¾à º¯°æ
	//@GetMapping("changeSeat")
	//public void changeSeat(Model model) {

		//model.addAttribute("seatList", seatService.getAllList());
		//model.addAttribute("regList", reservationService.getAllList());
	//}
	
	private ReservationService service;
	
	@GetMapping("/list")
	public void list(Model model) {
		model.addAttribute("list", service.getList());
	}
	
	//@PostMapping("/delete")
	//public String resinfoDelete(Long rno, RedirectAttributes rttr) {
		//service.delete(rno);
		//rttr.addFlashAttribute("result", "delete Success");
		//return "redirect:/reservation/list";
	//}
	
	@PostMapping(value = "/delete")
    public String ajaxTest(HttpServletRequest request) {
            
        String[] ajaxMsg = request.getParameterValues("valueArr");
        int size = ajaxMsg.length;
        for(int i=0; i<size; i++) {
        	service.delete(ajaxMsg[i]);
        }
        return "redirect:/reservation/list";
    }
	
	
	
	
	
	@GetMapping("/get")
	public void get(@RequestParam("rno") Long rno, Model model) {
		model.addAttribute("resinfo", service.get(rno));
	}
	
	@PostMapping("/modify")
	public String modify(ReservationVO infoVO, RedirectAttributes rttr) {
		if(service.modify(infoVO)) {
			rttr.addFlashAttribute("result", "success");
		}
		return "redirect:/reservation/list";
	}
	
		
}