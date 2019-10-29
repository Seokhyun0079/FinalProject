-- 계정 생성문
create user tuna IDENTIFIED by tuna;
grant resource, connect to tuna;

-- 꼬였을 때 drop
drop sequence seq_fno;
drop sequence mb_comment_seq;
drop sequence seq_goods_no;
drop sequence seq_pay_no;
drop sequence msb_seq;
drop sequence msbc_seq;
drop sequence mseq;
drop sequence letter_seq;
drop sequence qb_article_seq;
drop sequence qb_comment_seq;
drop sequence seq_fbacker;
drop sequence mb_article_seq;

drop table chartboard;
drop table musicboard_comment;
drop table musicboard_article;
drop table my_music;
drop table mymusicshareboard_comment;
drop table mymusicshareboard_article;
drop table funding;
drop table payment;
drop table goods;
drop table mboard;
drop table qnaboard_comment;
drop table qnaboard_article;
drop table letter;
drop table member;

create sequence seq_fno;
create sequence mb_comment_seq;
create sequence seq_goods_no;
create sequence seq_pay_no;
create sequence msb_seq;
create sequence msbc_seq;
create sequence mseq;
create sequence letter_seq;
create sequence qb_article_seq;
create sequence qb_comment_seq;
create sequence seq_fbacker;
create sequence mb_article_seq;

-- 회원 테이블
CREATE TABLE MEMBER(
    ID VARCHAR2(30) primary key,
    PASSWORD VARCHAR2(100),
    NAME VARCHAR2(10),
    NICKNAME VARCHAR2(30),
    BIRTH DATE,
    GENDER VARCHAR2(5),
    EMAIL VARCHAR2(50),
    PHONE VARCHAR2(50),
    PROFILEIMG VARCHAR2(50),
    ENROLLDATE DATE,
    UPDATEDATE DATE,
    GRADE VARCHAR2(10) CHECK(GRADE IN ('C','B','A')),   --C:일반 회원  B:유료 회원  A: 관리자
    STATUS VARCHAR2(10) CHECK(STATUS IN('Y','N'))
);

create table letter(
    letter_no number(10) primary key,
    to_id varchar2(30),
    from_id varchar2(30),
    message varchar2(300),
    CONSTRAINT FK_LETTER_TO FOREIGN KEY(to_id) REFERENCES MEMBER(ID),
    CONSTRAINT FK_LETTER_FROM FOREIGN KEY(from_id) REFERENCES MEMBER(ID)
);

-- QNA 게시판 게시글 테이블
create table qnaboard_article(
    article_no number(10) primary key,
    id varchar2(30),
    title varchar2(60),
    text varchar2(2000),
    file_name varchar2(200),
    read_count number(10),
    ARTICLE_DATE DATE DEFAULT SYSDATE,
    CONSTRAINT FK_QNA_MEMBER FOREIGN KEY(id)
    REFERENCES member(id)
);


-- QNA 게시판 댓글 테이블
create table qnaboard_comment(
    comment_no number(10) primary key,
    article_no number(10),
    id varchar2(30),
    reply_no number(10),
    content varchar2(2000),
    CONSTRAINT FK_QNABOARD_COMMENT1 FOREIGN KEY(id)
    REFERENCES member(id),
    CONSTRAINT FK_QNABOARD_COMMENT2 FOREIGN KEY(reply_no)
    REFERENCES qnaboard_comment(comment_no),
    CONSTRAINT FK_QNABOARD_COMMENT3 FOREIGN KEY(article_no)
    REFERENCES qnaboard_article(article_no)
);


--매거진게시판 테이블 생성
create table mboard(
    MSEQ NUMBER,
    MTITLE VARCHAR2(100),
    MCONTENT VARCHAR2(4000),
    MCOUNT NUMBER DEFAULT 0,
    CREATE_DATE DATE,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N'))
);

CREATE TABLE GOODS(
    GNO NUMBER(10) PRIMARY KEY,
    GNAME VARCHAR2(30),
    GPRICE NUMBER(30)
);

CREATE TABLE PAYMENT(
    PNO NUMBER(10) PRIMARY KEY,
    ID VARCHAR2(30),
    PDATE DATE DEFAULT SYSDATE,
    GNO NUMBER(10),
    CONSTRAINT FK_PAYMENT_ID FOREIGN KEY(ID) REFERENCES MEMBER(ID),
    CONSTRAINT FK_GOODS_NO FOREIGN KEY(GNO) REFERENCES GOODS(GNO)
);

CREATE TABLE funding(
    fno number(10) primary key,
    id varchar2(30),
    ftitle varchar2(60) not null,
    freward varchar2(30) not null,
    fcontent varchar2(2000) not null,
    fcreator varchar2(30) not null,
    fcreatorInfo varchar2(200),
    fbacker number(30) default 0,
    fgoal number(30) default 0,
    famount number(30) default 0,
    regDate date default sysdate,
    endDate date,
    fileName varchar2(200),
    CONSTRAINT FK_FUNDING_ID FOREIGN KEY(id) REFERENCES member(id)
);

-- 음악 게시판 게시글 테이블
create table musicboard_article(
    article_no number(10) primary key,
    id varchar2(30),
    title varchar2(60),
    text varchar2(2000),
    file_name varchar2(200),
    album_file varchar2(200),
    read_count number(10),
    best number(10),
    bad number(10),
    CONSTRAINT FK_MEMBER FOREIGN KEY(id)
    REFERENCES member(id)
);

-- 음악 게시판 댓글 테이블
create table musicboard_comment(
    comment_no number(10) primary key,
    article_no number(10),
    id varchar2(30),
    reply_no number(10),
    content varchar2(2000),
    CONSTRAINT FK_MUSICBOARD_COMMENT1 FOREIGN KEY(id)
    REFERENCES member(id),
    CONSTRAINT FK_MUSICBOARD_COMMENT2 FOREIGN KEY(reply_no)
    REFERENCES musicboard_comment(comment_no),
    CONSTRAINT FK_MUSICBOARD_COMMENT3 FOREIGN KEY(article_no)
    REFERENCES musicboard_article(article_no) ON DELETE CASCADE
);

create table my_music(
    id varchar2(30),
    article_no number(10),
    PRIMARY key (article_no, id)
);

create table mymusicshareboard_article(
    article_no number(10) primary key,
    id varchar2(30),
    title varchar2(60),
    content varchar2(2000),
    read_count number(10),
    best number(10),
    bad number(10),
    CONSTRAINT FK_msb FOREIGN KEY(id)
    REFERENCES member(id)
);
--음악 마이리스트 공유 게시판 댓글 테이블
create table mymusicshareboard_comment(
    comment_no number(10) primary key,
    article_no number(10),
    id varchar2(30),
    reply_no number(10),
    content varchar2(2000),
    CONSTRAINT FK_MYMUSICSHAREBOARD_COMMENT1 FOREIGN KEY(id)
    REFERENCES member(id),
    CONSTRAINT FK_MYMUSICSHAREBOARD_COMMENT2 FOREIGN KEY(reply_no)
    REFERENCES mymusicshareboard_comment(comment_no),
    CONSTRAINT FK_MYMUSICSHAREBOARD_COMMENT3 FOREIGN KEY(article_no)
    REFERENCES mymusicshareboard_article(article_no)
);

-- 차트 테이블
CREATE TABLE CHARTBOARD(
    ARTICLE_DATE DATE DEFAULT SYSDATE,
    ARTICLE_NO NUMBER(10),
    READ_COUNT NUMBER(10),
    PRIMARY KEY (ARTICLE_DATE, ARTICLE_NO)
);




insert into member values('tuna', '$2a$10$9WOWQ3DahQcRsR5njNR0nuAdvCCF6kHOoOvWB3cXHD27KwN/2kd52','김튜나', '4조참치', SYSDATE,  'MALE', 'tuna@tuna.com', '01077560324', '1.gif', SYSDATE, SYSDATE, 'A', 'Y');

COMMIT;