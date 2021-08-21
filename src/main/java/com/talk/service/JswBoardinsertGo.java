package com.talk.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import com.talk.model.JswMapper;
import com.talk.model.ListDTO;
import com.talk.model.JswListDTO;
import com.talk.model.JswBoardAction;
import com.talk.model.PageDTO;

@Service
public class JswBoardinsertGo implements JswBoardAction{

	@Resource
	JswMapper db;
	
	@Override
	public Object execute(JswListDTO jDTO, PageDTO pDTO) {
		db.jswInsert(jDTO);
		
		return null;
	}
		
}
