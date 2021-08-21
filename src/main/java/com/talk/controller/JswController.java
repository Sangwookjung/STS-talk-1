package com.talk.controller;




import javax.annotation.Resource;
import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.talk.model.JswBoardAction;
import com.talk.model.JswListDTO;
import com.talk.model.PageDTO;
import com.talk.model.RjsBoardAction;
import com.talk.model.RjsListDTO;
import com.talk.service.MyProvider;

@Controller
@RequestMapping("/talk/jsw/{service}")
public class JswController {
	
	@Resource
	MyProvider myProvider;
	
	@RequestMapping()
	String view(@PathVariable String service) {
		
		if(service.endsWith("Go")) {
			
			return "redirect:list";
		}
	
		System.out.println("service : "+service );
		return "talk/jsw/"+service;
	}
	
	@ModelAttribute("jswdata")
	Object jswdata(@PathVariable String service, JswListDTO jdto, PageDTO pDTO) {
		System.out.println("하잉");
		JswBoardAction res = myProvider.getContext().getBean("jswBoard"+service,JswBoardAction.class);
		System.out.println("service : "+service + "\n pDTO : " + pDTO + "\n jswdto" + jdto);
		return res.execute(jdto, pDTO);
	}
	
	@ModelAttribute("pDTO")
	PageDTO pDTO(PageDTO pDTO) {
		
		System.out.println("modelAttribute + "+pDTO);
		
		return pDTO;
		
	}
	

}
