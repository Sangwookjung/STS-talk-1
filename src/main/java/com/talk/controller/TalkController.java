package com.talk.controller;


import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TalkController {
	
	
	@RequestMapping("/talk/{cate}/{service}")
	String view(@PathVariable String cate,@PathVariable String service) {
		
		System.out.println("cate : "+cate );
		System.out.println("service : "+service );
		return "talk/"+cate+"/"+service;
	}
	
	@RequestMapping("/talk")
	String viewMain() {
		
		return "main";
	}
}
