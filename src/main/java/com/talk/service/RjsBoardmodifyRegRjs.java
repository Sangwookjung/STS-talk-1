package com.talk.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talk.model.AlertDTO;
import com.talk.model.PageDTO;
import com.talk.model.RjsBoardAction;
import com.talk.model.RjsListDTO;
import com.talk.model.RjsMapper;

@Service
public class RjsBoardmodifyRegRjs implements RjsBoardAction{
	
	@Resource
	RjsMapper mm;
	
	
	@Override
	public Object execute(PageDTO pDTO, RjsListDTO rjsDTO) {

		//System.out.println("rjsDTO 확인 ###"+rjsDTO.toString());
		int res = mm.rjsModify(rjsDTO);
		//System.out.println("res 확인 ###"+res);
		
		//System.out.println("getRjsnumber 확인 ### "+rjsDTO.getRjsnumber());
		AlertDTO dto = new AlertDTO();
		
		dto.setMsg("암호가 일치하지 않습니다.");
		dto.setUrl("modifyForm?rjsnumber="+rjsDTO.getRjsnumber()+"&page="+pDTO.getPage());
		
		if(res>0) {
			dto.setMsg("수정되었습니다");
			dto.setUrl("detail?rjsnumber="+rjsDTO.getRjsnumber()+"&page="+pDTO.getPage());
		}
		
		return dto;
		
	}
}
