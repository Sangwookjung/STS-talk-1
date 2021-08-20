package com.talk.controller;




import java.util.HashMap;
import java.util.List;
import javax.annotation.Resource;
import org.springframework.beans.factory.annotation.Autowired;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.talk.model.JswBoardAction;
import com.talk.model.JswListDTO;
import com.talk.model.PageDTO;
import com.talk.model.RjsBoardAction;
import com.talk.model.RjsListDTO;
import com.talk.service.MyProvider;


@Controller
@RequestMapping("/talk/{cate}/{service}")
public class TalkController {
	
	@Resource
	MyProvider myProvider;
	
	@RequestMapping()
	String view(@PathVariable String cate,@PathVariable String service) {
		
		if(service.endsWith("RegRjs")) {
			return "talk/"+cate+"/alert";
		}
		System.out.println("cate : "+cate );
		System.out.println("service : "+service );
		return "talk/"+cate+"/"+service;
	}
	
	@ModelAttribute("data")
	Object data(
			@PathVariable String cate,
			@PathVariable String service,
			PageDTO pDTO, 
			RjsListDTO rjsDTO) {
		
		RjsBoardAction res = myProvider.getContext().getBean("rjsBoard"+service, RjsBoardAction.class);
		
		return res.execute(pDTO, rjsDTO);
		
	}
	
	@ModelAttribute("jswdata")
	Object jswdata(@PathVariable String cate, @PathVariable String service, JswListDTO jdto, PageDTO pDTO) {
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
