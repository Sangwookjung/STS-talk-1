create table rjsboard(
   `rjsnumber` int auto_increment primary key,		/*게시판 번호*/
   rjsname varchar(100) not null,    		/*유저 로그인아이디*/
   rjstitle varchar(100) not null,			/*제목*/        
   rjscontent varchar(1000) not null,       	/*내용*/
   rjsreg_date date not null,		/*작성일*/
   rjscnt int not null
   );
   
  ALTER TABLE rjsborad ADD cnt int /*컬럼 추가*/
  
  alter table rjsborad 
  change column `number` `rjsnumber`;
 
ALTER TABLE rjsborad CHANGE `number` `rjsnumber` int auto_increment primary key COMMENT '1';

  