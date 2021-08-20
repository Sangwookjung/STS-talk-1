package com.talk.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talk.model.AlertDTO;
import com.talk.model.PageDTO;
import com.talk.model.RjsBoardAction;
import com.talk.model.RjsListDTO;
import com.talk.model.RjsMapper;

@Service
public class RjsBoardinsertRegRjs implements RjsBoardAction{
	
	@Resource
	RjsMapper mm;
	
	
	@Override
	public Object execute(PageDTO pDTO, RjsListDTO rjsDTO) {

		
		mm.rjsInsert(rjsDTO);
		
		AlertDTO dto = new AlertDTO();
		
		dto.setMsg("작성되었습니다.");
		dto.setUrl("list");
		
		return dto; //리턴
		
	}
}
