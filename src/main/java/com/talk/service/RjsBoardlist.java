package com.talk.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talk.db.ListDTO;
import com.talk.db.PageDTO;
import com.talk.db.RjsBoardAction;
import com.talk.db.RjsListDTO;
import com.talk.db.RjsMapper;


@Service
public class RjsBoardlist implements RjsBoardAction {

	@Resource
	RjsMapper mm;
	
	
	@Override
	public Object execute(PageDTO pDTO, RjsListDTO rjsDTO) {
		System.out.println(pDTO);
		System.out.println(rjsDTO);
		pDTO.init(mm, rjsDTO);
		
		//mybatis의 mapper메소드 파라미터가 복수여서 map으로 묶음
		HashMap<String, Object> map = new HashMap<>();
		map.put("pDTO", pDTO);
		map.put("RjsListDTO", rjsDTO);
		
		//리턴으로 보내야 하는 객체가 여러개여서 하나의 객체 멤버 변수로묶음
		ListDTO res = new ListDTO();
		res.setRjsmap(mm.rjsList(map));
		res.setRjsdto(rjsDTO); //
		res.setPdto(pDTO);
		return res;
		
	}
		

}
