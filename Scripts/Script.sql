create table rjsboard(
   `rjsnumber` int auto_increment primary key,		/*게시판 번호*/
   rjsname varchar(100) not null,    		/*유저 로그인아이디*/
   rjstitle varchar(100) not null,			/*제목*/        
   rjscontent varchar(1000) not null,       	/*내용*/
   rjsreg_date date not null,		/*작성일*/
   rjscnt int not null
   );
   
  ALTER TABLE rjsboard ADD cnt int /*컬럼 추가*/
  
  alter table rjsboard 
  change column `number` `rjsnumber`;
 
ALTER TABLE rjsboard CHANGE `number` `rjsnumber` int auto_increment primary key COMMENT '1';


create table jswlist (
	jswno int(11) primary key auto_increment not null,
	jswname varchar(20) not null,
	jswtitle varchar(50) not null,
	jswcnt int(11) not null 
);

drop table jswlist;

insert into jswlist(jswname,jswtitle,jswcnt) values 
('정상욱','이게뭐야',0),
('이익순','슬의생이다',0),
('짱구','못말린다',0),
('호리병','펑~',0),
('오드토머스','귀신보는 영화',0),
('제스트씨엔에스','개발회사',0),
('사조그룹','참치는 동원만 있는게 아니야',0),
('서운한서포터','롤할 시간이다',0),
('크로우즈','제로도 있당',0),
('역삼역','코리아아카데미',0),
('양재동','18번지가 우리집',0),
('도곡1동','부모님 집이지롱',0),
('호구왕','축구왕',0),
('병아리는','삐약삐약',0);
