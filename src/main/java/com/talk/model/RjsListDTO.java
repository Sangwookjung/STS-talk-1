package com.talk.model;

import java.sql.Date;

import lombok.Data;

@Data
public class RjsListDTO {
	
	Integer rjsnumber, rjscnt=0;
	String rjsname;
	String rjstitle;
	String rjscontent;
	Date rjsreg_date;
}
