package com.talk.controller;



import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/talk/{cate}/{service}")
public class TalkController {
	Logger logger = LoggerFactory.getLogger(getClass());
	
	@RequestMapping()
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
