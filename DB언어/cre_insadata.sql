REM ********************************************************************
REM Create the Y_EMP table

create table y_emp
(emp_id number(6),
emp_name varchar2(15) not null,
email varchar2(15),
gender varchar2(1),
birthdate date,
phone varchar2(15),
hiredate date,
position varchar2(10),
salary number(4),
comm number(2,2),
mgr_id number(6),
dept_id number(4))
/

REM ********************************************************************
REM Create the Y_DEPT table

create table y_dept
(dept_id number(4),
dept_name varchar2(20) not null,
loc_id number(4),
mgr_id number(6))
/

REM ********************************************************************
REM Create the Y_LOC table

create table y_loc
(loc_id  number(2),
address varchar2(50),
city varchar2(20),
zip_code varchar2(8))
/

REM ********************************************************************
REM Create the PAY_GRADE table

CREATE TABLE pay_grade
(pay_level char(3),
low_pay number(4),
high_pay number(4))
/

REM ********************************************************************
REM Create the Y_AWARD table

CREATE TABLE y_award
(serial_no number(3),
emp_id number(6),
awardee varchar2(15),
dept_id number(4),
position varchar2(10),
award_date date,
award_detail varchar2(20))
/

REM ***************************insert data into the EMP table

INSERT INTO y_emp VALUES (1001, '송강호', 'songgh', 'M', '67/11/17', 
       '02.123.5234', TO_DATE('97/06/17','rr/mm/dd'), '사장', 930, null, null, 100);
INSERT INTO y_emp VALUES (1002, '황신혜', 'hwangsh', 'M', '68/12/28',                       '02.123.5235', TO_DATE('00/03/02', 'rr/mm/dd'),  '부사장', 900, null, 1001, 100);                                                                                                      
INSERT INTO y_emp VALUES (1003, '김혜수', 'kimhs', 'M', '70/03/19', 
     '02.123.5236', TO_DATE('02/09/21','rr/mm/dd'),   '전무', 800, null, 1002, 100);                                                                                              
INSERT INTO y_emp VALUES (1005, '김명민', 'kimmm', 'M', '72/10/08', 
    '051.290.6001', TO_DATE('04/01/13','rr/mm/dd'),   '부장', 750, null, 1002, 200);                                                                                             
INSERT INTO y_emp VALUES (1007, '소지섭', 'sojs', 'M', '73/03/10', 
     '02.954.1991', TO_DATE('01/01/03','rr/mm/dd'),   '부장', 750, null, 1001, 300);                                                                                                
INSERT INTO y_emp VALUES (1009, '하정우', 'hajw', 'M', '75/07/03', 
      '02.556.2887', TO_DATE('01/03/07','rr/mm/dd'),   '부장', 630, .3, 1001, 400);    
INSERT INTO y_emp VALUES (1012, '장재혁', 'jangjh', 'M', '78/09/25', 
    '032.967.4569', TO_DATE('99/09/07','rr/mm/dd'),   '차장', 610, null, 1005, 200);                                                                                
INSERT INTO y_emp VALUES (1019, '이승연', 'leesy', 'F', '69/11/19', 
    '053.767.6374', TO_DATE('00/11/16','rr/mm/dd'),   '차장', 700, null, 1007, 300);  
INSERT INTO y_emp VALUES (1023, '차태현', 'chath', 'M', '80/10/23', 
    '054.816.5431', TO_DATE('01/03/19','rr/mm/dd'),   '과장', 590, null, 1003, 100);    
INSERT INTO y_emp VALUES (1029, '한지혜', 'hanjh', 'F', '87/10/28',
    '051.290.6002', TO_DATE('05/01/29','rr/mm/dd'),   '대리', 450, null, 1023, 100);   
INSERT INTO y_emp VALUES (1033, '박선영', 'parksy', 'F', '82/07/26',
    '02.556.2881', TO_DATE('04/01/29','rr/mm/dd'),   '과장', 570, null, 1012, 200);  
INSERT INTO y_emp VALUES (1035, '오상우', 'ohsw', 'M', '73/08/29', 
    '054.816.5432', TO_DATE('05/05/21','rr/mm/dd'),   '차장', 630, .27, 1009, 400);
INSERT INTO y_emp VALUES (1037, '남규민', 'namgm', 'M', '87/06/20', 
    '053.767.6375', TO_DATE('06/07/09','rr/mm/dd'),   '과장', 580, null, 1019, 300);     
INSERT INTO y_emp VALUES (1038, '최준호', 'choijh', 'M', '81/07/24',
    '02.954.1992', TO_DATE('06/07/16','rr/mm/dd'),   '과장', 570, .16, 1035, 400);    
INSERT INTO y_emp VALUES (1044, '구혜선', 'guhs', 'F', '88/12/18', 
   '054.816.5433', TO_DATE('07/05/11','rr/mm/dd'),   '대리', 480, null, 1037, 300);                   
INSERT INTO y_emp VALUES (1049, '안정환', 'ahnjh', 'M', '85/05/06', 
    '02.556.2886', TO_DATE('13/10/15','rr/mm/dd'),   '과장', 500, .25, 1035, 400);        
INSERT INTO y_emp VALUES (1050, '박나래', 'parknr', 'F', '89/11/12', 
    '02.954.1993', TO_DATE('14/06/23','rr/mm/dd'),   '대리', 450, .21, 1038, 400);                                                                                                    
INSERT INTO y_emp VALUES (1058, '정려원', 'jungrw', 'F', '90/03/27', 
    '02.556.2885', TO_DATE('15/09/17','rr/mm/dd'),   '대리', 460, .2, 1049, 400);        
INSERT INTO y_emp VALUES (1061, '유아인', 'yooai', 'M', '89/08/18', 
    '032.967.4567', TO_DATE('16/03/24','rr/mm/dd'),   '대리', 490, .17, 1072, 400);   
INSERT INTO y_emp VALUES (1068, '도상윤', 'dosy', 'M', '80/06/09', 
    '051.290.6004', TO_DATE('10/10/29','rr/mm/dd'),   '과장', 530, null, 1012, 200);                                                                                                  
INSERT INTO y_emp VALUES (1072, '마동석', 'mads', 'M', '83/12/18',
   '032.967.4566', TO_DATE('11/01/02','rr/mm/dd'),   '과장', 570, .21, 1035, 400); 
INSERT INTO y_emp VALUES (1076, '임새미', 'limsm', 'F', '92/08/30', 
   '02.954.1994', TO_DATE('13/12/13','rr/mm/dd'),   '사원', 270, .11, 1050, 400);  
INSERT INTO y_emp VALUES (1081, '김수현', 'kimsh', 'M', '90/08/26', 
   '053.767.6376', TO_DATE('12/02/17','rr/mm/dd'),   '대리', 570, null, 1044, 300); 
INSERT INTO y_emp VALUES (1083, '배승연', 'baesy', 'F', '94/11/22', 
   '032.967.4565', TO_DATE('12/04/11','rr/mm/dd'),   '사원', 380, .13, 1061, 400);  
INSERT INTO y_emp VALUES (1067, 'Mark Kim', 'kmark', 'M', '91/04/28', 
    '051.290.6003', TO_DATE('16/08/17','rr/mm/dd'),   '사원', 400, null, 1029, 100);      
INSERT INTO y_emp VALUES (1087, '이규한', 'leegh', 'M', '90/06/13', 
    '053.767.6377', TO_DATE('14/08/17','rr/mm/dd'),   '대리', 420, null, 1037, 300);  

INSERT INTO y_emp VALUES (1090, '태지영', 'taejy', 'F', '93/02/21', 
    '054.816.5434', TO_DATE('17/09/21','rr/mm/dd'),   '사원', 250, null, 1044, 300);                                                                          
INSERT INTO y_emp VALUES (1094, '박보검', 'parkbg', 'M', '90/10/08', 
    '02.556.2884', TO_DATE('17/02/17','rr/mm/dd'),   '대리', 350, null, 1033, 200);      
INSERT INTO y_emp VALUES (1097, '김인선', 'kimis', 'M', '92/12/29', 
    '053.767.6379', TO_DATE('18/05/21','rr/mm/dd'),   '사원', 150, null, 1087, 300);    
INSERT INTO y_emp VALUES (2002, '이승기', 'leesk', 'M', '92/09/10', 
    '02.556.2883', TO_DATE('17/09/17','rr/mm/dd'),   '사원', 170, .15, 1058, 400);                                                                                                  
INSERT INTO y_emp VALUES (2005, '차준영', 'chajy', 'M', '92/08/15', 
    '054.816.5435', TO_DATE('16/11/07','rr/mm/dd'),   '사원', 350, null, 1044, 300);                                                          
INSERT INTO y_emp VALUES (2011, '고준희', 'gojh', 'F', '95/02/23', 
    '02.556.2882', TO_DATE('18/03/02','rr/mm/dd'),   '사원', 180, null, 1094, 200 );     
INSERT INTO y_emp VALUES (2012, '정해인', 'junghi', 'M', '93/03/15', 
     '02.954.1996', TO_DATE('17/03/02','rr/mm/dd'),   '사원', 280, null, 1068, null );       



REM ***************************insert data into the DEPT table    

INSERT INTO y_dept VALUES (100,'경영지원', 1, 1003);                           

INSERT INTO y_dept VALUES (200,'총무부', 2, 1005);                     

INSERT INTO y_dept VALUES (300,'경리부', 3, 1007);                             

INSERT INTO y_dept VALUES (400,'영업부', 4, 1009);                          

INSERT INTO y_dept VALUES (500,'홍보부', 5, null);                                  


REM ***************************insert data into the LOC table 
                                
INSERT INTO y_loc VALUES (1,'서울특별시 강남구 영동대로 511','서울', '06164');                                                                          
                                                                                
INSERT INTO y_loc VALUES (2,'부산광역시 동구 중앙대로 289','부산', '48792');                                                                          
                                                                                
INSERT INTO y_loc VALUES (3,'경북 포항시 남구 대송로 180','포항', '37863');                                                                   
                                                                                
INSERT INTO y_loc VALUES (4,'인천광역시 연수구 인천타워대로 241','인천', '22009');                                                                           

INSERT INTO y_loc VALUES (5,'서울특별시 강남구 강남대로 358','서울', '06241');                                                                         
                                                                                
INSERT INTO y_loc VALUES (6,'서울특별시 서초구 방배로 285','서울', '06552');                                                                           
                                                                                
INSERT INTO y_loc VALUES (7,'대구광역시 수성구 달구벌대로 2393','대구', '42019');                                                                            
                                                                                
INSERT INTO y_loc VALUES (8,'경기도 성남시 분당구 야탑로 59','성남', '13496');   


REM ***************************insert data into the PAGRADE table                                                          
INSERT INTO pay_grade VALUES ('G_A', 150, 299);                                

INSERT INTO pay_grade  VALUES ('G_B', 300, 449);                                

INSERT INTO pay_grade  VALUES ('G_C', 450, 599);                                

INSERT INTO pay_grade VALUES ('G_D', 600, 749);                              

INSERT INTO pay_grade  VALUES ('G_E', 750, 899);                              

INSERT INTO pay_grade  VALUES ('G_F', 900, 1000);      


REM ***************************insert data into the AWARD table   

INSERT INTO y_award 
VALUES (1, 1009, '하정우', 400, '대리', TO_DATE('07/08/07','rr/mm/dd'), 
              '모범사원상');                 

INSERT INTO y_award 
VALUES (2, 1004, '이시언', 400, '대리', TO_DATE('10/06/01','rr/mm/dd'),  
             '모범사원상');                  

INSERT INTO y_award 
VALUES (3, 1031, '강동원', 400, '사원', TO_DATE('14/09/26','rr/mm/dd'),  
             '영업실적상');  

INSERT INTO y_award 
VALUES (4, 1002, '황신혜', 200, '부장', TO_DATE('05/05/01','rr/mm/dd'),  
             '베스트팀장상');

INSERT INTO y_award 
VALUES (5, 1002, '황신혜', 100, '전무', TO_DATE('15/03/02','rr/mm/dd'),  
             '장기근속상'); 

INSERT INTO y_award 
VALUES (6, 1007, '소지섭', 300, '과장', TO_DATE('11/05/23','rr/mm/dd'),   
             '모범사원상');                 

INSERT INTO y_award 
VALUES (7, 1037, '남규민', 300, '과장', TO_DATE('17/12/07','rr/mm/dd'),  
            '모범사원상');                

INSERT INTO y_award 
VALUES (8, 1058, '정려원', 400, '대리', TO_DATE('18/03/17','rr/mm/dd'),  
             '영업실적상'); 
   
INSERT INTO y_award 
VALUES (9, 1003, '김혜수', 200, '부장', TO_DATE('18/05/21','rr/mm/dd'),  
            '장기근속상');
COMMIT;

REM ********************************************************************
REM Create Additory tables

CREATE TABLE emp300
AS
SELECT emp_id, emp_name, salary, dept_id
FROM y_emp
WHERE 1 = 2
/

CREATE table MGR_LIST
(EMP_ID	NUMBER(6),
MGR_ID	NUMBER(6),
HIREDATE DATE)
/


CREATE table SAL_LIST
(EMP_ID	NUMBER(6),
SALARY	NUMBER(10),
POSITION VARCHAR2(10))
/

CREATE table HIGH_INCOME
(DEPTID	NUMBER(4),
SALARY	NUMBER(10))
/

CREATE TABLE hired_list
(DEPTID	NUMBER(4),
HIREDATE	DATE)
/

CREATE TABLE hired_list17
(DEPTID	NUMBER(4),
HIREDATE	DATE)
/


CREATE TABLE hired_list18
(DEPTID	NUMBER(4),
HIREDATE	DATE)
/


CREATE TABLE SALES_DATA
(EMP_id 	NUMBER(6),
WEEK_ID	NUMBER(2),
MON_SALES	NUMBER(10),
TUE_SALES	NUMBER(10),
WED_SALES	NUMBER(10),
THUR_SALES	NUMBER(10),
FRI_SALES	NUMBER(10))
/
INSERT INTO SALES_DATA VALUES
(1033, 6, 1160,2100,1570,1500,2000)
/
INSERT INTO SALES_DATA VALUES
(1033, 11, 870,1420,1230,2100,1100)
/
INSERT INTO SALES_DATA VALUES
(1058, 15, 1110,1450,970,1440,1700)
/
commit
/


CREATE TABLE SALES_REPORT
(EMP_ID	NUMBER(6),
WEEK	NUMBER(2),
SALES	NUMBER(10))
/

create table old_emp
as
select emp_id, emp_name, position, salary, dept_id
from y_emp
where dept_id=100
/
update old_emp
set dept_id=200, salary=salary*0.8
/
commit
/

CREATE TABLE time_test1
(id NUMBER(2),
 d1 DATE,
 d2 TIMESTAMP,
 d3 TIMESTAMP WITH TIME ZONE,
 d4 TIMESTAMP WITH LOCAL TIME ZONE)
/

CREATE TABLE time_test2
(no number(2),
dur1 INTERVAL YEAR TO MONTH,
dur2 INTERVAL DAY TO SECOND)
/

CREATE TABLE cust_grade
(cust_level NUMBER(1) primary key,
grade VARCHAR2(15),
discnt_rate NUMBER(2,2))
/

INSERT INTO cust_grade
VALUES(1, 'VIP', .3)
 /

INSERT INTO cust_grade
VALUES(2, 'GOLD', .25)
/

INSERT INTO cust_grade
VALUES(3, 'SILVER', .2)
/

commit
/

CREATE TABLE dept400
AS
SELECT emp_id id, emp_name name, salary , mgr_id 
FROM y_emp
WHERE 1=2
/

ALTER TABLE dept400
ADD CONSTRAINT d400_id_pk PRIMARY KEY(id)
/

ALTER TABLE dept400
 ADD CONSTRAINT d400_mgr_fk FOREIGN KEY(mgr_id)
REFERENCES dept400(id)
/

ALTER TABLE dept400
ADD CONSTRAINT d400_ck CHECK(id > 0 and salary >0)
/


REM  verify the number of rows created for each table
select * from tab;
select count(*) emp from y_emp;
select count(*) dept from y_dept;
select count(*) loc from y_loc;
select count(*) pagrade from pay_grade;
select count(*) award from y_award;