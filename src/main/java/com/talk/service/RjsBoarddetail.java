package com.talk.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talk.model.PageDTO;
import com.talk.model.RjsBoardAction;
import com.talk.model.RjsListDTO;
import com.talk.model.RjsMapper;

@Service
public class RjsBoarddetail implements RjsBoardAction{
	
	@Resource
	RjsMapper mm;
	
	
	@Override
	public Object execute(PageDTO pDTO, RjsListDTO rjsDTO) {
		RjsListDTO rDTO = mm.rjsDetail(rjsDTO); //디테일 
		System.out.println("### > "+rDTO);
		mm.addCount(rDTO); //조회수 증가 추가
		
		System.out.println(mm.rjsDetail(rDTO));
		return mm.rjsDetail(rDTO); //리턴
		
	}
}
