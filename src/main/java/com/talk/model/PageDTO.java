package com.talk.model;



import java.util.HashMap;

import lombok.Data;

@Data
public class PageDTO {

	Integer start, limit, pageLimit, total, startPage, endPage, page = 1;

	public void init(RjsMapper mm, RjsListDTO rjsDTO) {
		limit = 10;
		pageLimit = 5;
		start = (page - 1) * limit;

		int ttt = mm.rjsCnt(rjsDTO);
		this.total = ttt / limit;
		
		if (ttt % limit > 0)
			total++;

		calc();
	}
	
	public void jswinit(JswMapper db, HashMap<String, Object> map) {
		limit = 10;
		pageLimit = 5;
		start = (page - 1) * limit;
		int ttt = db.jswCnt(map);
		this.total = ttt / limit;
		
		if (ttt % limit > 0)
			total++;
		
		start = (page-1)*limit;
		
		startPage = (page-1)/pageLimit * pageLimit  +1;
		endPage = startPage + pageLimit - 1;
		
		if(endPage > total) {
			endPage = total;
		}
		System.out.println("정상욱이다 총합"+total);
		System.out.println("정상욱이다 맨끝"+endPage);
		System.out.println("정상욱이다 시작"+startPage);
		System.out.println("정상욱이다 제한"+pageLimit);
	}
	
	private void calc() {
		start = (page - 1) * limit;

		startPage = (page - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if (endPage > total) {
			endPage = total;
		}
	}

	
	
}
