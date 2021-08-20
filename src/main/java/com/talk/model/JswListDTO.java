package com.talk.model;

import java.util.Date;

import lombok.Data;

@Data
public class JswListDTO {
	int jswno;
	int jswcnt=0;
	String jswname;
	String jswtitle;
	Date jswdate;
	String jswcontent;
	String jswpw;
}
