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
public class JswBoardlist implements JswBoardAction{

	@Resource
	JswMapper db;
	
	
	@Override
	public Object execute(JswListDTO jDTO, PageDTO pDTO) {
		System.out.println("정상욱"+pDTO);

		HashMap<String, Object> map = new HashMap<>();
		map.put("JswListDTO", jDTO);
		map.put("pDTO", pDTO);
		pDTO.jswinit(db, map);

		System.out.println("hashmap 확인 정상욱" + map);
		ListDTO res = new ListDTO();
		res.setJswmap(db.getlist(map));
		res.setPdto(pDTO);
		res.setJswdto(jDTO);
		System.out.println("return값 정상욱 확인"+res);
		return res;
	}
		
}
