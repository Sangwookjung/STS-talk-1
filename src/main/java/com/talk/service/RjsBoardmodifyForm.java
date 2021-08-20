package com.talk.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talk.model.PageDTO;
import com.talk.model.RjsBoardAction;
import com.talk.model.RjsListDTO;
import com.talk.model.RjsMapper;

@Service
public class RjsBoardmodifyForm implements RjsBoardAction{
	
	@Resource
	RjsMapper mm;
	
	
	@Override
	public Object execute(PageDTO pDTO, RjsListDTO rjsDTO) {

		System.out.println("mm.rjsDetail(rjsDTO)"+mm.rjsDetail(rjsDTO));
		return mm.rjsDetail(rjsDTO);
	}
}
