package com.talk.model;

import java.util.List;
import java.util.Map;

import lombok.Data;

@Data
public class ListDTO {
	
	List<RjsListDTO> rjsmap;

	RjsListDTO rjsdto;

	PageDTO pdto;

	List<JswListDTO> jswmap;
	
	JswListDTO jswdto;
}
