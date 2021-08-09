package com.talk.controller;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class TalkController {
	@RequestMapping("/jsw/HI")
	public String showList(@RequestParam Map<String, Object> param) {
		
		return "/jsw/HI";
	}
}
