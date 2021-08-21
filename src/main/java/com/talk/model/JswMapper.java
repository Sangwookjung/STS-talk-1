package com.talk.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface JswMapper {
	List<JswListDTO> getlist(HashMap<String, Object> map);
	
	JswListDTO jswDetail(JswListDTO jdto);
	
	void jswInsert(JswListDTO jdto);
	
	void jswUpdate(JswListDTO jdto);
	
	int jswCnt(HashMap<String, Object> map);
	
	void viewCnt(JswListDTO jdto);
}
