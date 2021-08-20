package com.talk.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talk.model.JswMapper;
import com.talk.model.ListDTO;
import com.talk.model.JswListDTO;
import com.talk.model.JswBoardAction;
import com.talk.model.PageDTO;

@Service
public class JswBoardinsert implements JswBoardAction{

	@Resource
	JswMapper db;
	
	
	@Override
	public Object execute(JswListDTO jDTO, PageDTO pDTO) {
		db.jswinsert(jDTO);
		
		return jDTO;
	}
		
}
