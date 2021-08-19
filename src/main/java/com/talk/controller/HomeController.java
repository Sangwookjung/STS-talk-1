package com.talk.controller;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

	@RequestMapping("/talk")
	//@ResponseBody
	public String home(Model mm) {
		
//		mm.addAttribute("data", new Date());
//		
//		System.out.println("home 진입");
		return "main";
		
		
	}
}
