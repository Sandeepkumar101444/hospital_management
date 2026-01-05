create user pmsh identified by prj2031f
/
grant resource,connect to pmsh
/
grant dba to pmsh
/
conn pmsh/prj2031f
/
create table td
(
 test_name varchar2(20) not null,
 patient_id varchar2(10) not null,
patient_name varchar2(20) not null,
d_name varchar2(20) not null,
c_date varchar2(15) not null
)
/
create table atest
(
 test_id varchar2(10) constraint av_test_test_id primary key,
test_name varchar2(20) not null,
doctor_name varchar2(30) not null,
charge number(10,2) not null
)
/
create table abs
(
ambulance_no number(2) not null,
patient_name varchar2(30),
cdate varchar2(12) not null,
category varchar2(25) not null,
starting_place varchar2(35) not null,
destination varchar2(35) not null,
status varchar2(3) not null,
name varchar2(30) not null,
address varchar2(30) not null,
mobile_no long not null
)
/
create table ambulanced
(
ambulance_no number(2) constraint ambulance_no primary key,
registration_no varchar2(15) unique not null,
category varchar2(40) not null,
d_name varchar2(30),
mobile  long,
charge varchar2(7),
status varchar2(10) not null
)
/
create table appointment
(
 id varchar(20) constraint appointment_id primary key,
name varchar2(30) not null,
c_date varchar2(15) not null,
cause varchar2(15),
d_category varchar2(15),
d_name varchar2(20),
c_time varchar2(15) not null
)
/
create table nprb
(
 pr_bill_id varchar2(15) constraint nprb_pr_biil_id primary key,
 p_id varchar2(20),
 name varchar2(25),
 c_date varchar2(15),
 mode_of_payment varchar2(20),
 patient_type varchar2(5),
 r_charge varchar2(5),
 d_charge varchar2(5),
 total_charge varchar2(10)
)
/
create table p_rj
(
 p_id varchar2(20) constraint p_rj_p_id primary key,
 c_date varchar2(15) not null,
 name varchar2(30) not null,
 dob varchar2(15) not null,
 age number(3) not null,
 gender varchar2(7) not null,
 blood_group varchar2(6),
 religion varchar2(10),
 emailid varchar2(35),
 mobile number(11),
 address varchar2(50),
 p_type varchar2(7) not null,
 cause varchar2(25),
 d_specialization varchar2(30) not null,
 d_name varchar2(30) not null,
 metting_time varchar2(9)
)
/
create table attendance
(
id varchar2(10) not null,
name varchar2(35) not null,
cdate varchar2(12) not null,
time_in varchar2(10) not null,
time_out varchar2(10),
total_time varchar2(12),
status varchar2(3) not null
)
/
create table rdetails
(
room_no varchar2(7) constraint rdetails_room_no primary key,
category varchar2(20) not null,
capacity varchar2(10),
start_bed_no number(3),
last_bed_no number(3),
charge varchar2(20)
)
/
create table bookward
(
id varchar2(10) not null,
name varchar2(20) not null,
category varchar2(20) not null,
room_no varchar2(7) not null,
bed_no varchar2(7) not null,
start_date varchar2(25) not null,
time varchar2(9) not null,
last_date varchar2(15),
ltime varchar2(9),
status varchar2(9) not null,
cause varchar2(50) not null
)
/
create table ad
(
 e_id varchar2(20) constraint ad_e_id primary key,
present_add varchar2(40) not null,
pre_pincode number(6) not null,
pre_dist varchar2(15),
parmanent_add varchar2(40),
par_pincode number(6),
par_dist varchar2(15)
)
/
create table qual
(
 e_id varchar2(15) constraint qual_e_id primary key,
schooling varchar2(3) not null,
s_details varchar2(40),
under_graduate varchar2(3)not null,
ug_details varchar2(40),
post_graduate varchar2(3) not null,
pg_details varchar2(40)
)
/
create table pi
(
e_id varchar2(20) constraint pi_e_id primary key,
f_name varchar2(10) not null,
m_name varchar2(10),
l_name varchar2(10),
age number(3),
dob varchar2(15) not null,
gender varchar2(7) not null,
date_of_joining varchar2(15) not null,
designation varchar2(15) not null,
experience varchar2(20),
salary decimal(8,2),
m_no number(10) not null,
email varchar2(35)
)
/
create table d_category
(
id varchar2(20) constraint d_category_id primary key,
name varchar2(30) not null,
designantion varchar2(20) not null,
department varchar2(20) not null,
room_no varchar2(7) not null,
charge number(5)
)
/
CREATE TABLE DOC_EXP
(
ID VARCHAR2(10) NOT NULL,
NAME VARCHAR2(30) NOT NULL,
DETAIL VARCHAR2(400) NOT NULL
)
/
create table old_patient
(
p_id varchar2(20) not null,
name varchar2(30) not null,
c_date varchar2(15) not null,
d_name varchar2(30) not null,
p_type varchar2(5)not null,
payment varchar2(20) not null,
d_charge number(5) not null
)
/
create table doctor_visit
( p_id varchar2(10) not null,
  p_name varchar2(30) not null,
  room_no varchar2(5) not null,
  bed_no number(2) not null,
  d_name varchar2(30) not null,
  d_speciality varchar2(30) not null,
  c_date varchar2(12) not null,
  time varchar2(10) not null
)
/
create table test_bill
(
	bill_id varchar2(10) not null,
	test_name varchar2(30) not null,
	p_id varchar2(10) not null,
	p_name varchar2(30) not null,
	c_date varchar2(12) not null,
	d_name varchar2(30) not null,
	test_charge  number(4) not null,
	constraint test_bill_id primary key(bill_id)
)
/
create table dis_bill
(
	bill_id varchar2(10) not null,
	p_id varchar2(10) not null,
	p_name varchar2(30) not null,
	admitted_date varchar2(10) not null,
       	discharge_date varchar2(12) not null,
	room_charge number(4) not null,
	nursing_charge number(4) not null,
	doctor_charge number(4) not null,
	otehr_charge number(3) not null,
	generated_by varchar2(30) not null,
        dis_total    number(10) not null,
        dis_type    varchar2(15) not null,
       constraint dis_bill_id  primary key(bill_id) 
)
/
create table doctor_schedule
( id varchar2(20) not null,
  d_name varchar2(30) not null,
  department varchar2(30) not null,
  day varchar2(15) not null,
  start_time varchar2(15)not null,
  end_time varchar2(15) not null,
  status varchar2(5)not null
)
/
CREATE TABLE LOGIN
(
ID VARCHAR2(20) NOT NULL,
PASSWORD VARCHAR2(20) NOT NULL,
TIME_IN VARCHAR2(15)NOT NULL,
STATUS VARCHAR2(5) NOT NULL,
C_DATE VARCHAR2(13) NOT NULL,
TIME_OUT VARCHAR2(10) NOT NULL
)
/
CREATE TABLE SIGNUP
(
USER_ID VARCHAR2(20) NOT NULL,
PASSWORD VARCHAR2(20) NOT NULL,
DESIGNATION VARCHAR2(20) NOT NULL,
C_DATE VARCHAR2(10) NOT NULL
)
/
insert into signup values('admin@123','800020','ADMIN','15/09/2021')
/
create table p_diagnosis
( 
  p_id varchar2(20)not null,
  p_name varchar2(30) not null,
  doc_id varchar2(20) not null,
  doc_name varchar2(30) not null,
  c_date varchar2(15) not null,
  age varchar2(4) not null,
  gender varchar2(10) not null,
  address varchar2(100) not null,
  m_details varchar2(400) not null
)
/
create table bc
(
  p_id varchar2(20) not null,
  m_name varchar2(30) not null,
  f_name varchar2(30) not null,
  d_name varchar2(30) not null,
  authorized_by varchar2(35) not null,
  c_name varchar2(30) not null,
  c_gender varchar2(10) not null,
  c_wt varchar2(10) not null,
  b_time varchar2(10) not null,
  b_day varchar2(12) not null,
  b_month varchar2(15) not null,
  b_date varchar2(15) not null,
  b_year  varchar2(5) not null,
  SLNO    VARCHAR2(20)NOT NULL,
  L_AREA     VARCHAR2(35) not null,
  TAHSIL    VARCHAR2(30) not null,
  BLOCK     VARCHAR2(30)  not null,
  DISTRICT  VARCHAR2(30)  not null,
  STATE     VARCHAR2(30)  not null,  
  PLACE_OF_BIRTH    VARCHAR2(40) not null,
  PRE_ADDRESS       VARCHAR2(200) not null,
  PERMANENT_ADDRESS   VARCHAR2(200) not null
)
/
create table dc
(
  p_id varchar2(20) not null,
  p_name varchar2(30) not null,
  gender varchar2(10) not null,
  d_time varchar2(10) not null,
  d_day varchar2(12) not null,
  d_date varchar2(12) not null,
  d_month varchar2(15) not null,
  d_year varchar2(5) not null,
  d_cause varchar2(40) not null,
  doc_name varchar2(35) not null,
  authorized_by varchar2(35) not null,
  slno varchar2(20) not null,
  tahsil varchar2(30) not null,
  district varchar2(30) not null,
  state varchar2(30) not null,
  place_of_death varchar2(40) not null,
  f_name varchar2(30) not null,
  address varchar2(200) not null
)
/
create table bed
(
   r_no VARCHAR2(10)NOT NULL,
 bed_no VARCHAR2(10)NOT NULL,
 status VARCHAR2(15)NOT NULL
)
/
create table aboutlogin
(
reg_by varchar2(30) not null,
p_id varchar2(20) not null,
p_name varchar2(20) not null,
c_date varchar2(13) not null
)
/
commit;
  























	