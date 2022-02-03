CREATE TABLE CONSUMER(
    con_id varchar2(15) primary key,
    con_name varchar2(15),
    con_pwd varchar2(20),
    con_pwd_ck varchar2(20),
    con_phon varchar2(14)
);

CREATE TABLE owner(
    ow_id varchar2(15) primary key,--가게 아이디
    ow_name varchar2(15),--가게 이름
    ow_pwd varchar2(20),
    ow_pwd_ck varchar2(20),
    ow_phon varchar2(14),
    ow_addr varchar2(50),--가게 주소
    ow_img varchar2(100) default 0
    );
    
create table menu(
	mn_owner varchar2(30), 
    mn_img varchar2(100),
	mn_name varchar2(30),
    mn_price number(10),
    mn_content varchar2(50)
);

create table reservation(
	rev_num number(10) primary key,
    rev_date varchar2(15),
    rev_time varchar2(15),
    rev_name varchar2(15),
    rev_id varchar2(15)
);

CREATE SEQUENCE rev_seq INCREMENT BY 1 START WITH 1 MINVALUE 1;

create table board(									-- 게시판
    bo_num 			number 					primary key, 		-- 글번호
    bo_name 		VARCHAR2(20),								-- 작성자
    bo_pass 		varchar2(20), 								-- 비밀번호
    bo_title 		varchar2(100), 								-- 제목
    bo_content 		varchar2(1000), 							-- 내용
    bo_date 		date 					default sysdate,	-- 작성일
    bo_readCount	number 					default 0			-- 조회수
);


-- 조회수
create sequence bo_seq 
start with 1
increment by 1;		


insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'4321','4321','4321','4321'
);

select * from board;
drop table board;
drop sequence bo_seq;
drop sequence rev_seq;

select * from menu;
select * from owner;
select * from consumer;
select * from reservation;
select * from board;

delete reservation ;
delete menu ;
delete owner ;
delete board ;
delete consumer ;

drop table menu ;
drop table reservation ;
drop table owner ;

update owner set ow_img=0 where ow_id='111';


----------------------------------------------------------------

------------------------------------------------------------회원
SELECT * FROM consumer;

insert into consumer values('yonghoon','용훈짱','123','123','012-1235-4568');
insert into consumer values('joohi','주희공쥬','123','123','012-5485-5123');
insert into consumer values('sumin','숨니','123','123','012-5487-2415');
insert into consumer values('yoosung','유성매직','123','123','012-2431-8546');
insert into consumer values('zzanggu','짱구','123','123','012-5423-8541');
insert into consumer values('manggu','맹구','123','123','012-1235-4568');
insert into consumer values('doraemong','도라에몽','123','123','012-9752-9655');
insert into consumer values('konan','코난','123','123','012-7326-4854');
insert into consumer values('totoro','토토로','123','123','012-3696-4452');
insert into consumer values('bororo','뽀로로','123','123','012-5236-8523');

------------------------------------------------------------사장
    
insert into owner values('zzanggu','열정국밥','123','123','01-542-8542','서울시 강남구 떡잎1동 587-2','gook1');
insert into owner values('mangu','돈코츠나베','123','123','01-852-4312','서울시 강남구 떡잎1동 96-2','na1');
insert into owner values('doraemong','이찌방라멘','123','123','01-754-8853','서울시 강남구 떡잎3동 11-2','ramen1');
insert into owner values('konan','VIPs','123','123','01-356-1256','서울시 강남구 떡잎2동 56-55','vips1');
insert into owner values('totoro','삼첩분식','123','123','01-968-6321','서울시 강남구 떡잎2동 56','boon1');
insert into owner values('bororo','다래성','123','123','01-366-8882','서울시 강남구 떡잎1동 965-2','china1');
insert into owner values('yoosung','스시야미','123','123','01-223-8892','서울시 강남구 떡잎3동 599-2','cho1');
insert into owner values('sumin','투고샐러드','123','123','01-366-1524','서울시 강남구 떡잎1동 866-5','salad1');
insert into owner values('joohi','아비꼬카레','123','123','01-874-3561','서울시 강남구 떡잎2동 432-3','ka1');
insert into owner values('yonghoon','카페하루','123','123','01-574-8722','서울시 강남구 떡잎1동 17-9','cafe1');
insert into owner values('juin','타코따코','123','123','01-572-3215','서울시 강남구 떡잎3동 97-39','taco1');
insert into owner values('cook','피자공주','123','123','01-122-2842','서울시 강남구 떡잎2동 113-2','pizza1');
insert into owner values('doremi','동네밥집','123','123','01-357-7824','서울시 강남구 떡잎3동 87-2','han1');


------------------------------------------------------------메뉴
drop table menu;
create table menu(
	mn_owner varchar2(30), 
    mn_img varchar2(100),
	mn_name varchar2(30),
    mn_price number(10),
    mn_content varchar2(100)
);

insert into menu values('열정국밥','gook1','순대국밥','9000','맛있는 전통 순대로 만들었습니다');
insert into menu values('열정국밥','gook2','콩나물국밥','7000','계란을 풀어 드시면 맛있어요');
insert into menu values('열정국밥','gook3','돼지국밥','9000','살코기수육으로 이루어진 담백한 영양돼지국밥입니다');
insert into menu values('열정국밥','gook4','매콤국밥','8000','얼큰 다대기 제공합니다');
insert into menu values('열정국밥','gook5','편육','12000','쫄깃쫄깃한 편육');

insert into menu values('돈코츠나베','na1','스키야끼','20000','우리가게 대표 음식이에요');
insert into menu values('돈코츠나베','na2','밀푀유나베','17000','소고기+깻잎+버섯');
insert into menu values('돈코츠나베','na3','크림우동','12000','촉촉하고 고소한 크림우동');
insert into menu values('돈코츠나베','na4','카레우동','10000','카레와 돈까스를 같이 즐겨요');
insert into menu values('돈코츠나베','na5','김치돈까스나베','16000','국내산 김치와 생돈까스의 조합');

insert into menu values('이찌방라멘','ramen1','돈코츠라멘','9000','진한 돼지육수 베이스의 기본라멘');
insert into menu values('이찌방라멘','ramen2','매콤라멘','10000','매콤한 국물이 땡긴다면 매콤라멘');
insert into menu values('이찌방라멘','ramen3','차슈라멘','11000','부드러운 식감의 차슈');
insert into menu values('이찌방라멘','ramen4','왕교자','7000','바삭한 튀김옷을 입은 왕교자');

insert into menu values('VIPs','vips2','등심숙주볶음','16000','국내산 한우');
insert into menu values('VIPs','vips3','스테이크세트','30000','스테이크+야채제공');
insert into menu values('VIPs','vips4','바베큐세트','35000','직화구이 바베큐');
insert into menu values('VIPs','vips5','특선세트','50000','해산물모둠+스테이크');
insert into menu values('VIPs','vips6','디저트','13000','디저트+커피제공');

insert into menu values('삼첩분식','boon1','떡볶이','5000','매콤달달 떡볶이');
insert into menu values('삼첩분식','boon2','김밥','4000','야채많이 김밥');
insert into menu values('삼첩분식','boon3','순대','3000','직접만든 순대');
insert into menu values('삼첩분식','boon4','어묵','1000','국물이 시원해요');
insert into menu values('삼첩분식','boon5','튀김','500','바삭바삭 튀김');

insert into menu values('다래성','china1','짜장면','5000','우리동네 베스트 짜장면');
insert into menu values('다래성','china2','짬뽕','8000','해산물 모둠 짬뽕');
insert into menu values('다래성','china3','만두','3000','튀김옷이 맛있어요');
insert into menu values('다래성','china4','탕수육','20000','탕수육시키면 만두 서비스');
insert into menu values('다래성','china5','동파육','15000','일단 먹어봐요');
insert into menu values('다래성','china6','마파두부','8000','간단한 점심메뉴로 추천');
insert into menu values('다래성','china7','깐풍기','30000','탕수육이 질렸다면 깐풍기~~');

insert into menu values('스시야미','cho1','초밥모둠','15000','모둠초밥이에요');
insert into menu values('스시야미','cho2','오꼬노미야끼','8000','소스많이 뿌려드려요');
insert into menu values('스시야미','cho3','타꼬야끼','3000','맛있는 타꼬야끼');
insert into menu values('스시야미','cho4','가라아게','5000','가라아게');

insert into menu values('투고샐러드','salad1','닭가슴살샐러드','10000','닭가슴살+옥수수+방울토마토');
insert into menu values('투고샐러드','salad2','단호박샐러드','8000','단호박+채소+수제소스');
insert into menu values('투고샐러드','salad3','소고기샐러드','12000','소고기+방울토마토+채소');
insert into menu values('투고샐러드','salad4','버섯샐러드','7000','버섯+소고기+채소');
insert into menu values('투고샐러드','salad5','연어샐러드','11000','연어+채소+옥수수');
insert into menu values('투고샐러드','salad6','자몽쥬스','5000','유기농 자몽으로 갈아만든 자몽쥬스');
insert into menu values('투고샐러드','salad7','키위쥬스','5000','유기농 키위로 갈아만든 키위쥬스');

insert into menu values('아비꼬카레','ka1','두가지맛카레','12000','두가지맛 카레입니다');
insert into menu values('아비꼬카레','ka2','오리지널카레','10000','우리가게 대표메뉴');
insert into menu values('아비꼬카레','ka3','오믈렛카레','15000','보들보들 오믈렛');
insert into menu values('아비꼬카레','ka4','돈까스카레','11000','국내산 돼지고기');

insert into menu values('카페하루','cafe2','아메리카노','5000','에스프레소 2샷 제공');
insert into menu values('카페하루','cafe3','쿠키앤크림','6000','벨기에산 초콜릿쿠키');
insert into menu values('카페하루','cafe4','자바칩','8000','촉촉한 초코칩');
insert into menu values('카페하루','cafe5','카페모카','7000','커피와 초코의 만남');
insert into menu values('카페하루','cafe6','와플','4000','와플+생크림 소스');

insert into menu values('타코따코','taco1','타코세트','25000','쉬림프타코+나쵸+음료');
insert into menu values('타코따코','taco2','가족세트','54000','비프타코+나쵸+카레우동+음료');

insert into menu values('피자공주','pizza1','피자세트','13000','에피타이저부터 메인,디저트의 3COURSE를 한입에');
insert into menu values('피자공주','pizza2','마르게리따피자','10000','이탈리안 정통 피자');
insert into menu values('피자공주','pizza3','감자튀김','5000','케이준 감자튀김');
insert into menu values('피자공주','pizza4','수제햄버거','10000','국내산 소고기로 만든 수제패티와 특제소스의 만남');

insert into menu values('동네밥집','han2','김치찌개','7000','이천 쌀+묵은지+돼지막고기+집반찬2종');
insert into menu values('동네밥집','han3','된장찌개','7000','이천 쌀+시골된장+조미김+집반찬2');
insert into menu values('동네밥집','han4','부대찌개','7000','각종 소세지모둠이 들어간 매콤부대찌개');
insert into menu values('동네밥집','han5','제육볶음','6000','국내산 돼지고기');


------------------------------------------------------------예약

insert into reservation values(rev_seq.nextval,'2022-01-01', '13:00','아비꼬카레','용훈짱');
insert into reservation values(rev_seq.nextval,'2022-01-11', '13:00','열정국밥','주희공쥬');
insert into reservation values(rev_seq.nextval,'2022-01-12', '13:00','돈코츠나베','숨니');
insert into reservation values(rev_seq.nextval,'2022-01-13', '13:00','이찌방라멘','유성매직');
insert into reservation values(rev_seq.nextval,'2022-01-24', '13:00','VIP','짱구');
insert into reservation values(rev_seq.nextval,'2022-01-15', '18:00','삼첩분식','맹구');
insert into reservation values(rev_seq.nextval,'2022-01-06', '19:00','다래성','도라에몽');
insert into reservation values(rev_seq.nextval,'2022-01-06', '13:00','스시야미','코난');
insert into reservation values(rev_seq.nextval,'2022-01-07', '13:00','투고샐러드','토토로');
insert into reservation values(rev_seq.nextval,'2022-01-08', '13:00','카페하루','뽀로로');
insert into reservation values(rev_seq.nextval,'2022-01-19', '13:00','타코따코','맹구');

insert into reservation values(rev_seq.nextval,'2022-01-22', '16:00','피자공주','용훈짱');
insert into reservation values(rev_seq.nextval,'2022-01-23', '16:00','동네밥집','주희공쥬');
insert into reservation values(rev_seq.nextval,'2022-01-24', '16:00','아비꼬카레','숨니');
insert into reservation values(rev_seq.nextval,'2022-01-25', '16:00','열정국밥','유성매직');
insert into reservation values(rev_seq.nextval,'2022-01-26', '16:00','돈코츠나베','짱구');
insert into reservation values(rev_seq.nextval,'2022-01-27', '16:00','이찌방라멘','맹구');
insert into reservation values(rev_seq.nextval,'2022-01-21', '16:00','VIP','도라에몽');
insert into reservation values(rev_seq.nextval,'2022-01-29', '16:00','삼첩분식','코난');
insert into reservation values(rev_seq.nextval,'2022-01-21', '16:00','다래성','토토로');
insert into reservation values(rev_seq.nextval,'2022-01-22', '16:00','스시야미','뽀로로');
insert into reservation values(rev_seq.nextval,'2022-01-23', '16:00','투고샐러드','맹구');

insert into reservation values(rev_seq.nextval,'2022-01-11', '17:00','카페하루','용훈짱');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','타코따코','주희공쥬');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','피자공주','숨니');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','동네밥집','유성매직');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','아비꼬카레','짱구');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','열정국밥','맹구');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','돈코츠나베','도라에몽');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','이찌방라멘','코난');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','VIP','토토로');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','스시야미','뽀로로');
insert into reservation values(rev_seq.nextval,'2022-01-12', '17:00','삼첩분식','맹구');

insert into reservation values(rev_seq.nextval,'2022-01-22', '15:00','다래성','용훈짱');
insert into reservation values(rev_seq.nextval,'2022-01-23', '19:00','스시야미','주희공쥬');
insert into reservation values(rev_seq.nextval,'2022-01-24', '19:00','투고샐러드','숨니');
insert into reservation values(rev_seq.nextval,'2022-01-25', '19:00','카페하루','유성매직');
insert into reservation values(rev_seq.nextval,'2022-01-26', '19:00','타코따코','짱구');
insert into reservation values(rev_seq.nextval,'2022-01-27', '19:00','피자공주','맹구');
insert into reservation values(rev_seq.nextval,'2022-01-24', '19:00','동네밥집','도라에몽');
insert into reservation values(rev_seq.nextval,'2022-01-29', '19:00','아비꼬카레','코난');
insert into reservation values(rev_seq.nextval,'2022-01-31', '19:00','열정국밥','토토로');
insert into reservation values(rev_seq.nextval,'2022-01-30', '19:00','돈코츠나베','뽀로로');
insert into reservation values(rev_seq.nextval,'2022-01-30', '19:00','이찌방라멘','맹구');

------------------------------------------------------------게시판

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'TimeIsMoney','123','고생 많이 했습니다','고생 많이 했습니다'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Money','123','그동안','그동안'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Is','123','취뽀합시다','취뽀합시다'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Time','123','우리 모두','우리 모두'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Money','123','22일은 실기','22일은 실기'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Is','123','21일은 필기','21일은 필기'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Time','123','자소서 쓰고','자소서 쓰고'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'TimeIsMoney','123','이력서 쓰고','이력서 쓰고'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Money','123','시험공부하고 ','시험공부하고'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Is','123','이제 ','이제'
);

insert into board(bo_num,bo_name,bo_pass,bo_title,bo_content) values(
   bo_seq.nextval,'Time','123','아싸 종강이다','아싸 종강이다'
);

commit;
rollback;