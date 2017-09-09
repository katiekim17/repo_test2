-- 중복되는 이름의 테이블 삭제 (참조키포함해서 지우기)
drop table admin CASCADE CONSTRAINTS;
drop table member CASCADE CONSTRAINTS;
drop table reservation CASCADE CONSTRAINTS;
drop sequence reservation_seq;

-- 관리자 테이블
CREATE TABLE ADMIN (
   id         varchar2(20) primary key,
   password   varchar2(20) not null
);

-- 관리자 저장
insert into admin(id, password) values('admin', 'admin');

-- 회원 정보 테이블
CREATE TABLE MEMBER (
   custid        varchar2(50) primary key,      -- 아이디
   password      varchar2(20) not null,         -- 비밀번호
   custname      varchar2(100) not null,         -- 소유자 이름
   name          varchar2(100) not null,         -- 가게 이름
   custtel       varchar2(30) not null,         -- 가입자 전화번호
   tel           varchar2(30) not null,         -- 업체 전화번호
   postcode      varchar2(30) not null,         -- 우편번호
   road          varchar2(100) not null,        -- 도로명 주소
   jibun         varchar2(100) not null,        -- 지번 주소
   idno          varchar2(100) unique,         	-- 사업자 번호
   division      varchar2(20) not null,         	-- 구분 : cafe(카페), business(수거업체)
   lat			 varchar2(40) not null,			-- 주소의 위도
   lng			 varchar2(40) not null			-- 주소의 경도
);

-- 예약 테이블
CREATE TABLE RESERVATION (
   resernum 	number 			primary key,    													 -- 예약 번호
   cafeid 		varchar2(20) 	not null 		CONSTRAINT member_id_fk1 references member(custid),	 -- 카페 아이디
   businessid	varchar2(20) 					CONSTRAINT member_id_fk2 references member(custid),  -- 업체 아이디
   name 		varchar2(30) 	not null,              												 -- 가게 이름
   custtel 		varchar2(30) 	not null,    														 -- 가입자 전화번호
   tel 			varchar2(30) 	not null,       													 -- 업체 전화번호
   reserdate 	date 			not null,         													 -- 예약 날짜
   msg 			varchar2(2) 	not null       														 -- 쪽지(d,t)
);

-- 예약 테이블 시퀀스
CREATE SEQUENCE reservation_seq;

-- 마일리지 테이블
CREATE TABLE MILEAGE (
   custid 		varchar2(20) 	not null CONSTRAINT member_id_fk3 references member(custid),	-- 아이디
   division		varchar2(20) 	not null,  														-- 구분 : cafe(카페), business(수거업체)
   totalamount 	number 			not null,  														-- 총량
   realdate 	date 			default sysdate													-- 실제 날짜
);

-- 결과 테이블
CREATE TABLE RESULT(
   resernum 	number 			not null CONSTRAINT reservation_num_fk references reservation(resernum),  -- 예약 번호
   custid 		varchar2(20) 	not null, 																  -- 아이디
   name 		varchar2(30) 	not null, 																  -- 가게 이름
   amount 		number 			not null, 																  -- 양
   realdate		date 			default sysdate, 														  -- 실제 날짜
   success 		varchar2(30) 	not null,      															  -- 성공여부 
   sign 		varchar2(30) 	not null																  -- 사인 전송
);

-- 저장
commit;



-- 테이블 컬럼 타입 변경
-- 컬럼타입 변경
ALTER TABLE [TABLE_NAME] MODIFY ( [COLUMN_NAME] [DATA_TYPE] [NULL|NOT NULL] );
ALTER TABLE member MODIFY (custid varchar2(100));



-- 컬럼 추가
ALTER TABLE EMP ADD (email VARCHAR2(10));

ALTER TABLE member ADD (lat varchar2(40));
ALTER TABLE member ADD (lng varchar2(40));

