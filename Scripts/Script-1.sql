create table jswlist (
	jswno int(11) primary key auto_increment not null,
	jswdate date,
	jswname varchar(20) not null,
	jswtitle varchar(50) not null,
	jswpw varchar(20) not null,
	jswcontent varchar(1000) not null,
	jswcnt int(11) not null 
);
create table rjsboard (
	rjsnumber int(11) primary key auto_increment not null,
	rjsreg_date date,
	rjsname varchar(20) not null,
	rjstitle varchar(50) not null,
	rjspw varchar(20) not null,
	rjscontent varchar(1000) not null,
	rjscnt int(11) not null 
);
create table jswlist (
	jswno int(11) primary key auto_increment not null,
	jswdate date,
	jswname varchar(20) not null,
	jswtitle varchar(50) not null,
	jswpw varchar(20) not null,
	jswcontent varchar(1000) not null,
	jswcnt int(11) not null 
);

drop table jswlist;

insert into jswlist(jswdate,jswname,jswtitle,jswpw,jswcontent,jswcnt) values 
('1992-01-04','정상욱','이게뭐야','1111','content1',0),
('2010-08-07','이익순','슬의생이다','2222','content2',0),
('2020-11-29','짱구','못말린다','3333','content3',0),
('1989-12-30','호리병','펑~','4444','content4',0),
('1996-04-16','오드토머스','귀신보는 영화','5555','content5',0),
('1965-03-22','제스트씨엔에스','개발회사','6666','content6',0),
('1706-01-07','사조그룹','참치는 동원만 있는게 아니야','7777','content7',0),
('1988-02-15','서운한서포터','롤할 시간이다','8888','content8',0),
('2015-05-27','크로우즈','제로도 있당','9999','content9',0),
('2013-09-24','역삼역','코리아아카데미','0000','content10',0),
('1991-04-28','양재동','18번지가 우리집','1010','content11',0),
('2010-08-07','도곡1동','부모님 집이지롱','1212','content12',0),
('1996-12-16','호구왕','축구왕','1313','content13',0),
('1986-06-15','병아리는','삐약삐약','1414','content14',0);

INSERT INTO talk.rjsboard (rjsname,rjspw,rjstitle,rjscontent,rjsreg_date,rjscnt) VALUES
	 ('이름','21123','제목','내용','2021-03-21',2),
	 ('이름','12413','제목','내용','2021-03-22',2),
	 ('이름','142124','제목','내용','2021-03-25',2),
	 ('이름','1423','제목','내용','2021-03-26',2),
	 ('이름','1524','제목','내용','2021-03-21',6),
	 ('이름','1424','제목','내용','2021-03-29',2),
	 ('이름','1244','제목','내용','2021-04-21',2),
	 ('이름','412124','제목','내용','2021-03-20',39),
	 ('이름','41212','제목','내용','2021-03-21',2),
	 ('이름','412412','제목','내용','2021-03-11',2),
	 ('이름','412412','제목','내용','2021-03-12',3),
	 ('이름','412142','제목','내용','2021-03-21',8),
	 ('이름','412412','제목','내용','2021-03-21',2),
	 ('이름','421','제목','내용','2021-03-21',2),
	 ('이름','412','제목','내용','2021-03-21',2),
	 ('이름','412414','제목','내용','2021-03-21',61),
	 ('111','111','111','111','2021-08-20',1),
	 ('111','111','111','111','2021-08-20',5),
	 ('222','333','111','111','2021-08-20',0),
	 ('222','3333','111','111','2021-08-20',0),
	 ('222','444','111','111','2021-08-20',1),
	 ('222','1111111','111','111','2021-08-20',10),
	 ('111','111','1111231232133','1113123123','2021-08-20',27),
	 ('수정1','111','수정1','111','2021-08-20',5),
	 ('수정테스트','111','수정테스트','수정테스트','2021-08-20',17),
	 ('쓰기','111','글','테스트','2021-08-20',0),
	 ('최신글','','t','업데이트','2021-08-21',2);
	 

	
	SET @CNT = 0;
	UPDATE `rjsboard` SET rjsnumber = @CNT:=@CNT+1;