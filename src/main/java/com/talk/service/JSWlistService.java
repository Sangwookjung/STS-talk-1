package com.talk.service;

import java.util.HashMap;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.talk.model.DBMapper;

@Service
public class JSWlistService {

	@Resource
	DBMapper db;
	
	public Object execute(Object obj) {
		HashMap<String, Object> map = new HashMap<>();
		map.put("jswlist", db.getlist(map));
		
		return map;
	}
	
}
