package com.talk.model;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;


@Mapper
public interface RjsMapper {

	List<RjsListDTO> rjsList(HashMap<String, Object> map);  //페이지와 리스트를 받기위해 해쉬맵
	
	int rjsCnt(RjsListDTO rjsDTO); //페이징
	
	RjsListDTO rjsDetail(RjsListDTO rjsDTO); //디테일 상세내용 확인
	
	void addCount(RjsListDTO rjsDTO); // 조회수 카운팅
	
	void rjsInsert(RjsListDTO rjsDTO); //글쓰기 정보 DB 저장

	int rjsModify(RjsListDTO rjsDTO); // 수정하기 위해 값의 int 값을 가저옴
	
}