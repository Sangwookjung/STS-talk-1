package com.talk.model;



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
	
	private void calc() {
		start = (page - 1) * limit;

		startPage = (page - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		
		if (endPage > total) {
			endPage = total;
		}

	}

	
	
}
