package com.talk.db;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface RjsMapper {

	List<RjsListDTO> rjsList(HashMap<String, Object> map);  //페이지와 리스트를 받기위해 해쉬맵
	
	int rjsCnt(RjsListDTO rjsDTO); //페이징
	
	
}