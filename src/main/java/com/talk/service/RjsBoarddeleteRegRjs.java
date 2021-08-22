package com.talk.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talk.model.AlertDTO;
import com.talk.model.PageDTO;
import com.talk.model.RjsBoardAction;
import com.talk.model.RjsListDTO;
import com.talk.model.RjsMapper;

@Service
public class RjsBoarddeleteRegRjs implements RjsBoardAction{
	
	@Resource
	RjsMapper mm;
	
	
	@Override
	public Object execute(PageDTO pDTO, RjsListDTO rjsDTO) {

		int res = mm.rjsDelete(rjsDTO);
		
		AlertDTO dto = new AlertDTO();
		
		dto.setMsg("암호가 일치하지 않습니다.");
		dto.setUrl("deleteForm?rjsnumber="+rjsDTO.getRjsnumber()+"&page="+pDTO.getPage());
		
		if(res>0) {
			dto.setMsg("삭제되었습니다");
			dto.setUrl("list");
		}
		
		return dto;
		
	}
}
