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

--관리자 계정 : tuna / tuna
--유료 회원 : music / music
--일반 회원 : user / user

insert into member values('tuna', '$2a$10$9WOWQ3DahQcRsR5njNR0nuAdvCCF6kHOoOvWB3cXHD27KwN/2kd52','김튜나', '4조참치', SYSDATE,  'MALE', 'tuna@tuna.com', '01077560324', '1.gif', SYSDATE, SYSDATE, 'A', 'Y');
insert into member values('music', '$2a$10$3zJ6OWaMU3oUEWQiTygCD.Gos8cNVKseyGmoAimeu7eCu7Jm8y6Vq', '황뮤직', '참치4조', SYSDATE,  'MALE', 'music@music.com', '01039139177', '2.gif', SYSDATE, SYSDATE, 'B', 'Y');
insert into member values('user', '$2a$10$f1eJpoOZcm9sqNeRqI/gbe544.NH7Vha/.OLVfhDQimH4Npaty9Bu', '사용자', '유저', SYSDATE,  'MALE', 'user@user.com', '01012345678', '3.gif', SYSDATE, SYSDATE, 'C', 'Y');
insert into MBOARD
   VALUES(mseq.nextval,'칸예 웨스트, 9집 [JESUS IS KING]  발표','<p><img  src="TunaMusic/resources/editor/mphotoUpload/201910292032209984f90d-22d4-4f8f-8038-6514c71b239b.jpg" title="%EC %B9%B8%EC%98%88%EC%94%A81.jpg">&nbsp;</p><p style="text-size- adjust: 100%; box-sizing: border-box; line-height: 1.7; letter-spacing: - 0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;;  font-size: 16px; background-color: rgb(255, 255, 255); text-align:  justify;"><font face="Noto Sans KR" style="text-size-adjust: 100%; box- sizing: border-box;">앨범 발표에 앞서, 애플뮤직의 비츠원 라디오(Beats 1)에서  공식 인터뷰를 가지기도 했던 칸예 웨스트(Kanye West). 재재재재확인된 발매일 에도 "마지막 믹싱을 잠 안자고 마치겠다"라고 선언했던 그가 마침내, 드디어 아홉  번째 앨범 [Jesus Is King]을 발표했다.</font></p><p style="text-size-adjust:  100%; box-sizing: border-box; line-height: 1.7; letter-spacing: -0.25px; color:  rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;; font-size: 16px;  background-color: rgb(255, 255, 255); text-align: justify;">&nbsp;</p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height: 1.7;  letter-spacing: -0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans  KR&quot;; font-size: 16px; background-color: rgb(255, 255, 255); text-align:  justify;"><font face="Noto Sans KR" style="text-size-adjust: 100%; box- sizing: border-box;">본작에는 선데이 서비스에 함께했던 성가대, 타이 달라 싸 인(Ty Dolla $ign), 앤트 클레몬스(Ant Clemons),프레드 하몬드(Fred  Hammond), 클립스(Clipse), 케니 지(Kenny G) 등이 피쳐링 게스트로 참여하기도  했다.&nbsp;아래는 칸예 웨스트가 미리 공개했던 [Jesus Is King]의 트랙 리스트 이다.</font></p><p style="text-size-adjust: 100%; box-sizing: border-box;  line-height: 1.7; letter-spacing: -0.25px; color: rgb(51, 51, 51); font-family:  &quot;Noto Sans KR&quot;; font-size: 16px; background-color: rgb(255,  255, 255); text-align: justify;"><font face="Noto Sans KR" style="text-size- adjust: 100%; box-sizing: border-box;"><br></font></p><p style="text- size-adjust: 100%; box-sizing: border-box; line-height: 1.7; letter-spacing: - 0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;;  font-size: 16px; background-color: rgb(255, 255, 255); text-align:  justify;"><font face="Noto Sans KR" style="text-size-adjust: 100%; box- sizing: border-box;"><img  src="http://localhost:8989/TunaMusic/resources/editor/mphotoUpload/2019 1029203253222c030d-1e9c-4488-bd50-3d59b127611f.jpg" title="%EC %B9%B8%EC%98%882.jpg"><br  style="clear:both;"><br></font></p>',default,sysdate,default);

insert into MBOARD
   VALUES(mseq.nextval,'스눕 독, “TDE는 데스 로우 레코즈의  상위호환”','<p><img  src="/TunaMusic/resources/editor/mphotoUpload/20191029203330f340110b-0edf-421f-a28b-34718154b3ee.jpg" title="%EC%8A %A4%EB%88%95%EB%8F%851.jpg"></p><p>&nbsp;</p><p style="text- size-adjust: 100%; box-sizing: border-box; line-height: 1.7; letter-spacing: - 0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;;  font-size: 16px; background-color: rgb(255, 255, 255);">&nbsp;</p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height: 1.7;  letter-spacing: -0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans  KR&quot;; font-size: 16px; background-color: rgb(255, 255, 255); text-align:  justify;">닥터 드레(Dr. Dre), 스눕 독(Snoop Dogg), 투팍(2Pac), 커럽트(Kurupt)  등의 서부 힙합 아티스트들을 지원하며, 90년대 힙합의 최전성기를 이끌었던 데스  로우 레코즈(Death Row Records). 힙합 역사상 가장 중요한 레이블 중 하나라고  불릴 수도 있을 정도로, 해당 레이블의 명성을 뛰어넘는 레이블은 앞으로도 없을  것이라 예상하는 이들도 적지 않다.</p><p style="text-size-adjust: 100%;  box-sizing: border-box; line-height: 1.7; letter-spacing: -0.25px; color: rgb (51, 51, 51); font-family: &quot;Noto Sans KR&quot;; font-size: 16px;  background-color: rgb(255, 255, 255); text-align: justify;">&nbsp;</p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height: 1.7;  letter-spacing: -0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans  KR&quot;; font-size: 16px; background-color: rgb(255, 255, 255); text-align:  justify;">그런데, 해당 레이블의 핵심 아티스트였던 스눕 독은 이미 현 세대에 데 스 로우 레코드를 넘는 레이블이 등장했다고 생각하는 듯하다. 바로 켄드릭  라마(Kendrick Lamar), 스쿨보이 큐(ScHoolboy Q), 제이 락(Jay Rock), SZA 등이  소속된 탑 독 엔터테인먼트(Top Dawg Entertainment, TDE)다.</p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height: 1.7;  letter-spacing: -0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans  KR&quot;; font-size: 16px; background-color: rgb(255, 255, 255); text-align:  justify;">&nbsp;</p><p style="text-size-adjust: 100%; box-sizing: border- box; line-height: 1.7; letter-spacing: -0.25px; color: rgb(51, 51, 51); font- family: &quot;Noto Sans KR&quot;; font-size: 16px; background-color: rgb (255, 255, 255); text-align: justify;">지난 27일, TDE의 대표 펀치(Punch)는 트 위터를 통해 스눕 독이 본인에게 전한 말을 공유했다. 펀치가 전한 바에 따르면, 스 눕 독은 펀치에게 "TDE가 데스 로우의 상위호환 버전"이라 말했다고  한다.</p><blockquote style="text-size-adjust: 100%; box-sizing: border-box;  color: rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;; font-size:  16px; letter-spacing: -0.25px; background-color: rgb(255, 255, 255);"><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height: 1.7; text- align: justify;">“스눕 독이 사람들 가득 찬 곳에서, 우리(TDE)가 데스 로우의 상위 호환 버전이라고 말해줬어. 과찬의 말씀.”</p></blockquote><p style="text- size-adjust: 100%; box-sizing: border-box; line-height: 1.7; letter-spacing: - 0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;;  font-size: 16px; background-color: rgb(255, 255, 255); text-align: justify;">웨 스트 코스트 힙합의 과거와 현재를 담고 있다고 해도 과언이 아닐 두 레이블, 데스  로우 레코즈와 TDE. 당신의 생각은 어떤가? 과연 TDE는 현 세대의 새로운 데스 로 우 레코즈일까? 적어도 두 세대에 모두 몸 담고 있는 스눕 독의 생각은 그런 듯하 다</p>',default,sysdate,default);

insert into MBOARD
   VALUES(mseq.nextval,'오닐, EP [The Illian] 발표','<p><img  src="/TunaMusic/resources/editor/mphotoUpload/2019102920392587479a3a-d694-4fe8-bc96-d4ec839be76d.jpg" title="%EC %98%A4%EB%8B%90%EC%9D%B4%EC%9A %A4.jpg"></p><p>&nbsp;</p><div style="text-size-adjust: 100%; box- sizing: border-box; color: rgb(51, 51, 51); font-family: &quot;Noto Sans  KR&quot;; font-size: 16px; letter-spacing: -0.25px; background-color: rgb (255, 255, 255); text-align: justify;"><span style="text-size-adjust: 100%;  box-sizing: border-box;">지난 5월에 발매된 EP [CASSETTE TAPE]에 이어, 오닐 이 전체 프로듀싱까지 맡은 새 붐뱁 앨범 [The Illian]이 발표되었다. 앨범 제목  “The Illian”은 고대 그리스의 서사시 “The Iliad”에서 따온 것이며, 오닐이 음악을  시작한 후로 지금의 그가 있기까지의 여정을 담았다고 한다. Horim, Auvers,  Hunger Noma, IGNITO, Basick, Snacky Chan, ILLINIT, Chaboom, Illson, DJ  Kendrickx 총 열 명의 아티스트들이 함께하였다.</span></div><div  style="text-size-adjust: 100%; box-sizing: border-box; color: rgb(51, 51, 51);  font-family: &quot;Noto Sans KR&quot;; font-size: 16px; letter-spacing: - 0.25px; background-color: rgb(255, 255, 255); text-align: justify;"><span  style="text-size-adjust: 100%; box-sizing: border-box;"><br style="text- size-adjust: 100%; box-sizing: border-box;"></span></div><blockquote  class="q4" style="text-size-adjust: 100%; box-sizing: border-box; padding:  10px; margin: 0px 15px; border: 1px solid rgb(217, 217, 217); background:  rgb(251, 251, 251); color: rgb(51, 51, 51); font-family: &quot;Noto Sans  KR&quot;; font-size: 16px; letter-spacing: -0.25px;"><div style="text-size- adjust: 100%; box-sizing: border-box; text-align: justify;"><span  style="text-size-adjust: 100%; box-sizing: border-box;"><strong  style="text-size-adjust: 100%; box-sizing: border-box;">ONiLL [The  Illian]</strong></span></div><div style="text-size-adjust: 100%; box- sizing: border-box; text-align: justify;"><span style="text-size-adjust: 100%;  box-sizing: border-box;"><br style="text-size-adjust: 100%; box-sizing:  border-box;"></span></div><div style="text-size-adjust: 100%; box-sizing:  border-box; text-align: justify;"><span style="text-size-adjust: 100%; box- sizing: border-box;"></span><div style="text-size-adjust: 100%; box-sizing:  border-box;">1. Old School Chef (Intro)</div><div style="text-size-adjust:  100%; box-sizing: border-box;">2. Checkmate</div><div style="text-size- adjust: 100%; box-sizing: border-box;">3. Day One</div><div style="text- size-adjust: 100%; box-sizing: border-box;">4. Home (with. Horim)  [Title]</div><div style="text-size-adjust: 100%; box-sizing: border-box;">5.  Secret Chamber</div><div style="text-size-adjust: 100%; box-sizing:  border-box;">6. Trespass (Feat. 오베르)</div><div style="text-size-adjust:  100%; box-sizing: border-box;">7. Sabotage (Feat. Hunger Noma,  IGNITO)</div><div style="text-size-adjust: 100%; box-sizing: border- box;">8. Illian [Title]</div><div style="text-size-adjust: 100%; box-sizing:  border-box;">9. Microphone Killaz (Feat. Basick, Snacky Chan, ILLINIT,  Chaboom, Illson, DJ  Kendrickx)</div></div></blockquote><p>&nbsp;</p>',default,sysdate,defa ult);

insert into MBOARD
   VALUES(mseq.nextval,'지바노프, 정규앨범 [GOOD THING] 발표  예정','<p><img  src="/TunaMusic/resources/editor/mphotoUpload/201910292040553afdf8bd-dff8-4a31-8d30-ca9f148575fc.jpg" title="%EC %A7%80%EB%B0%94%EB%85%B8%ED%94%84%EC %94%A8.jpg"></p><p>&nbsp;</p><p style="text-size-adjust: 100%; box- sizing: border-box; line-height: 1.7; letter-spacing: -0.25px; color: rgb(51, 51,  51); font-family: &quot;Noto Sans KR&quot;; font-size: 16px; background- color: rgb(255, 255, 255);">&nbsp;</p><p style="text-size-adjust: 100%;  box-sizing: border-box; line-height: 1.7; letter-spacing: -0.25px; color: rgb (51, 51, 51); font-family: &quot;Noto Sans KR&quot;; font-size: 16px;  background-color: rgb(255, 255, 255);">굿투미츄(goodtomeetyou)의 지바노 프(jeebanoff)가 2018년 발표한 EP [주마등 : 走馬燈] 이후 오랜만에 앨범 단위 프 로젝트를 발표한다. 첫 번째 정규앨범이 될 프로젝트의 타이틀은 [GOOD THING.] 이 될 예정이며, 앨범 발표를 예고하는 프리뷰 영상 또한 굿투미츄의 유튜브 채널 을 통해 공개되었다.</p><p style="text-size-adjust: 100%; box-sizing:  border-box; line-height: 1.7; letter-spacing: -0.25px; color: rgb(51, 51, 51);  font-family: &quot;Noto Sans KR&quot;; font-size: 16px; background-color:  rgb(255, 255, 255);">&nbsp;</p><blockquote class="q3" style="text-size- adjust: 100%; box-sizing: border-box; padding: 10px; margin: 0px 15px;  border: 1px solid rgb(217, 217, 217); color: rgb(51, 51, 51); font-family:  &quot;Noto Sans KR&quot;; font-size: 16px; letter-spacing: -0.25px;  background-color: rgb(255, 255, 255);"><p style="text-size-adjust: 100%;  box-sizing: border-box; line-height: 1.7;"><strong style="text-size-adjust:  100%; box-sizing: border-box;">jeebanoff [GOOD  THING.]</strong></p><p style="text-size-adjust: 100%; box-sizing:  border-box; line-height: 1.7;">&nbsp;</p><p style="text-size-adjust: 100%;  box-sizing: border-box; line-height: 1.7;">&nbsp;</p><p style="text-size- adjust: 100%; box-sizing: border-box; line-height: 1.7;">&nbsp;</p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height: 1.7;">1. 종 이인형<br style="text-size-adjust: 100%; box-sizing: border-box;">2. Good  thing<br style="text-size-adjust: 100%; box-sizing: border-box;">3. 너와 같 이 (TITLE)<br style="text-size-adjust: 100%; box-sizing: border-box;">4. 좋아 <br style="text-size-adjust: 100%; box-sizing: border-box;">5. Come along  with me<br style="text-size-adjust: 100%; box-sizing: border-box;">6. 나쁜  아이<br style="text-size-adjust: 100%; box-sizing: border-box;">7. Callin'  (TITLE)<br style="text-size-adjust: 100%; box-sizing: border-box;">8. 검은 구 름&nbsp;<br style="text-size-adjust: 100%; box-sizing: border-box;">9.  Guilty<br style="text-size-adjust: 100%; box-sizing: border-box;">10.  적막</p></blockquote><p>&nbsp;</p>',default,sysdate,default);

insert into MBOARD
   VALUES(mseq.nextval,'칸예 웨스트 “Selah”,   <젤다의 전설> OST와  판박이?','<p><img  src="http://localhost:8989/TunaMusic/resources/editor/mphotoUpload/20191029204304e934ba44-d572-4284-b733-460ae739f699.jpg" title="%EC %B9%B8%EC%98%88%EB%8B%98%20%ED%8C%90%EB%B0%95%EC%9D %B4.jpg"><br style="clear:both;">&nbsp;&nbsp;</p><div style="text-size- adjust: 100%; box-sizing: border-box; color: rgb(51, 51, 51); font-family: "  noto="" sans="" kr";="" font-size:="" 16px;="" letter-spacing:="" - 0.25px;="" background-color:="" rgb(255,="" 255,="" 255);"=""><font  face="Noto Sans KR" style="text-size-adjust: 100%; box-sizing: border- box;">칸예 웨스트(Kanye West)의 앨범은 조용히 지나간 적이 없지만, 이번 아홉  번째 앨범 [JESUS IS KING]은 앨범의 발매 연기, 내용물의 호불호 등으로 더더욱  뜨겁게 화두에 올라 있는 상태다. 현재 메타크리틱 점수 52점을 기록하며, 전작들 과는 달리 두 번씩은 더 뜯어볼 구석이 많은 앨범이란 건 확실해진 것 같기도 하다 .</font></div><div style="text-size-adjust: 100%; box-sizing: border-box;  color: rgb(51, 51, 51); font-family: " noto="" sans="" kr";="" font-size:=""  16px;="" letter-spacing:="" -0.25px;="" background-color:="" rgb(255,=""  255,="" 255);"=""><br></div><div style="text-size-adjust: 100%; box- sizing: border-box; color: rgb(51, 51, 51); font-family: " noto="" sans=""  kr";="" font-size:="" 16px;="" letter-spacing:="" -0.25px;="" background- color:="" rgb(255,="" 255,="" 255);"="">여기에, 소소하지만 한 번쯤 생각해보 고 넘어갈 법한 가벼운 의문이 하나 제기되었다. 바로 [JESUS IS KING]의 두 번째  트랙 "Selah"가 게임계 불후의 명작 &lt;젤다의 전설: 시간의 오카리나&gt; 수록  배경 음악과 매우 흡사하다는 것. 한 해외 네티즌은 "Selah"에 등장하는 "할렐루야 " 파트와 &lt;젤다의 전설: 시간의 오카리나&gt;에 등장하는 '게루도 마을'의 배경  음악을 합친 결과를 공유했다.<br></div><div style="text-size-adjust: 100%;  box-sizing: border-box; color: rgb(51, 51, 51); font-family: " noto=""  sans="" kr";="" font-size:="" 16px;="" letter-spacing:="" -0.25px;=""  background-color:="" rgb(255,="" 255,="" 255);"=""><br></div><div  style="text-size-adjust: 100%; box-sizing: border-box; color: rgb(51, 51, 51);  font-family: " noto="" sans="" kr";="" font-size:="" 16px;="" letter- spacing:="" -0.25px;="" background-color:="" rgb(255,="" 255,=""  255);"="">&lt;젤다의 전설: 시간의 오카리나&gt;는 그 게임성만큼이나 수준 높은  OST를 보유하고 있는 것으로도 잘 알려져 있다. 실제로, 해외 유명 평론 매체 피치 포크(Pitchfork)에서는 해당 OST에 9.0점의 높은 점수를 부여하기도 했다. 과연  "Selah"는 칸예 웨스트가 &lt;젤다의 전설&gt; 사운드트랙을 한 번이라도 듣고 영 향을 받은 결과물일까?<br></div>',default,sysdate,default);

insert into MBOARD
   VALUES(mseq.nextval,'칙필레, 칸예 웨스트에게 감사 인사  전해','<p><img  src="/TunaMusic/resources/editor/mphotoUpload/201910292045493be14641-02e8-4243-b324-46b0ccf762e4.jpg" title="%EC %B9%A0%ED%95%84%EB%A0%88%EB%8B%98.jpg"><br  style="clear:both;">&nbsp;</p><p style="text-size-adjust: 100%; box-sizing:  border-box; line-height: 1.7; letter-spacing: -0.25px; color: rgb(51, 51, 51);  font-family: &quot;Noto Sans KR&quot;; font-size: 16px; background-color:  rgb(255, 255, 255); text-align: justify;">칸예 웨스트의 '그' 앨범, [Jesus Is  King]이 마침내 실제로 모습을 드러냈다. 있는 힘껏 애태우며 만나게 된 앨범인지 라 이 앨범에 대한 팬들의 관심은 그 어느 때보다 뜨겁다. 그 와중에&nbsp;[Jesus  Is King]에 애정을 보인 건 칸예 웨스트의 팬들뿐만이 아니다. 미국의 패스트푸드  체인 칙필레(Chick-Fil-A)가 칙필레 이름을 곡에 쓴 칸예 웨스트에게 고마움을 전 했기 때문이다. [Jesus Is King]의 4번 트랙 "Closed On Sunday"에는 상대방을  칙필레에 비유하는 가사를 넣으며 끊임없이 칙필레를 읊조리곤 한다. 칙필레 측에 서는 칸예 웨스트의 샤라웃에 대해 고마움을 전하며 '우리는 우리 브랜드에 대한  흥미를 보이는 것에 항상 감사한다'라는 말을 전했다.&nbsp;</p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height: 1.7;  letter-spacing: -0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans  KR&quot;; font-size: 16px; background-color: rgb(255, 255, 255); text-align:  justify;">&nbsp;</p><blockquote style="text-size-adjust: 100%; box-sizing:  border-box; color: rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;;  font-size: 16px; letter-spacing: -0.25px; background-color: rgb(255, 255,  255);"><p style="text-size-adjust: 100%; box-sizing: border-box; line-height:  1.7;">Closed on Sunday, you're my Chick-fil-A<br style="text-size-adjust:  100%; box-sizing: border-box;">일요일엔 문 닫습니다, 당신은 저의 Chick-fil- A</p><p style="text-size-adjust: 100%; box-sizing: border-box; line-height:  1.7;">&nbsp;</p><p style="text-size-adjust: 100%; box-sizing: border-box;  line-height: 1.7;">Closed on Sunday, you my Chick-fil-A<br style="text- size-adjust: 100%; box-sizing: border-box;">일요일엔 문 닫습니다, 당신은 저 의 Chick-fil-A</p><p style="text-size-adjust: 100%; box-sizing: border-box;  line-height: 1.7;">&nbsp;</p><p style="text-size-adjust: 100%; box-sizing:  border-box; line-height: 1.7;">Hold the selfies, put the 'Gram away<br  style="text-size-adjust: 100%; box-sizing: border-box;">셀카는 멈추고, 인스타 는 치우게</p><p style="text-size-adjust: 100%; box-sizing: border-box;  line-height: 1.7;">&nbsp;</p><p style="text-size-adjust: 100%; box-sizing:  border-box; line-height: 1.7;">Get your family, y'all hold hands and pray<br  style="text-size-adjust: 100%; box-sizing: border-box;">온 가족 모아, 손을 모 아 기도해</p><p style="text-size-adjust: 100%; box-sizing: border-box;  line-height: 1.7;">&nbsp;</p></blockquote><p style="text-size-adjust:  100%; box-sizing: border-box; line-height: 1.7; letter-spacing: -0.25px; color:  rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;; font-size: 16px;  background-color: rgb(255, 255, 255); text-align: justify;">'설립자의 종교적  신념으로 일요일엔 영업을 하지 않는다'라는 의미로 뜻깊게 쓰인 가사. 칸예 웨스 트도, 칠필레 측도&nbsp;모두 진지했지만 정작 이를 듣는 팬들은 꼭  그렇지마는&nbsp;않아 보인다.</p><p style="text-size-adjust: 100%; box- sizing: border-box; line-height: 1.7; letter-spacing: -0.25px; color: rgb(51, 51,  51); font-family: &quot;Noto Sans KR&quot;; font-size: 16px; background- color: rgb(255, 255, 255); text-align:  justify;">&nbsp;</p>',default,sysdate,default);

insert into MBOARD
   VALUES(mseq.nextval,'후디, 첫 정규앨범 [Departure]  발표','<p><img  src="/TunaMusic/resources/editor/mphotoUpload/20191029204711a861b436-4b3a-4e3a-a9e4-1962f29d0028.jpg" title="%ED%9B %84%EB%94%94%EB%8B%98.jpg"></p><p>&nbsp;</p><p style="text- size-adjust: 100%; box-sizing: border-box; line-height: 1.7; letter-spacing: - 0.25px; color: rgb(51, 51, 51); font-family: &quot;Noto Sans KR&quot;;  font-size: 16px; background-color: rgb(255, 255, 255);"><font face="Noto  Sans KR" style="text-size-adjust: 100%; box-sizing: border-box;">AOMG 소 속 아티스트 후디(Hoody)가 첫 정규앨범 [Departure]를 발표했다. 본작은 총 11 곡으로 구성되어있으며, 어글리덕(Ugly Duck), 그레이(GRAY), 제이클레프(Jclef) 가 피쳐링으로 참여했다. 프로듀싱에는 해외 프로듀서 마이다스 허치(Midas  Hutch), 브론즈(Bronze), 슬롬(Slom). 차 차 말론(Cha Cha Malone),  아이오아(IOAH) 등이 참여했다.</font></p><p style="text-size-adjust: 100%;  box-sizing: border-box; line-height: 1.7; letter-spacing: -0.25px; color: rgb (51, 51, 51); font-family: &quot;Noto Sans KR&quot;; font-size: 16px;  background-color: rgb(255, 255, 255);">&nbsp;</p><blockquote  class="q4" style="text-size-adjust: 100%; box-sizing: border-box; padding:  10px; margin: 0px 15px; border: 1px solid rgb(217, 217, 217); background:  rgb(251, 251, 251); color: rgb(51, 51, 51); font-family: &quot;Noto Sans  KR&quot;; font-size: 16px; letter-spacing: -0.25px;"><p style="text-size- adjust: 100%; box-sizing: border-box; line-height: 1.7;"><strong  style="text-size-adjust: 100%; box-sizing: border-box;">Hoody  [Departure]</strong></p><p style="text-size-adjust: 100%; box-sizing:  border-box; line-height: 1.7;"><span style="text-size-adjust: 100%; box- sizing: border-box;">&nbsp;</span></p><p style="text-size-adjust: 100%;  box-sizing: border-box; line-height: 1.7;"><span style="text-size-adjust:  100%; box-sizing: border-box;">1. Perfect Timing</span></p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height:  1.7;"><span style="text-size-adjust: 100%; box-sizing: border-box;">2. 그대 로 있어줘 (Feat. Ugly Duck)</span></p><p style="text-size-adjust: 100%;  box-sizing: border-box; line-height: 1.7;"><span style="text-size-adjust:  100%; box-sizing: border-box;">3. Love Again</span></p><p style="text- size-adjust: 100%; box-sizing: border-box; line-height: 1.7;"><span  style="text-size-adjust: 100%; box-sizing: border-box;">4. Thank  You</span></p><p style="text-size-adjust: 100%; box-sizing: border-box;  line-height: 1.7;"><span style="text-size-adjust: 100%; box-sizing: border- box;">5. MIRO</span></p><p style="text-size-adjust: 100%; box-sizing:  border-box; line-height: 1.7;"><span style="text-size-adjust: 100%; box- sizing: border-box;">6. Something Missing (Interlude)</span></p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height:  1.7;"><span style="text-size-adjust: 100%; box-sizing: border-box;">7.  또</span></p><p style="text-size-adjust: 100%; box-sizing: border-box;  line-height: 1.7;"><span style="text-size-adjust: 100%; box-sizing: border- box;">8. 안녕히 (Adios) (Feat. GRAY)</span></p><p style="text-size-adjust:  100%; box-sizing: border-box; line-height: 1.7;"><span style="text-size- adjust: 100%; box-sizing: border-box;">9. 춤 (Feat. Jclef)</span></p><p  style="text-size-adjust: 100%; box-sizing: border-box; line-height:  1.7;"><span style="text-size-adjust: 100%; box-sizing: border-box;">10. 선과  악</span></p><p style="text-size-adjust: 100%; box-sizing: border-box;  line-height: 1.7;">&nbsp;</p><p style="text-size-adjust: 100%; box-sizing:  border-box; line-height: 1.7;"><span style="text-size-adjust: 100%; box- sizing: border-box;">11.  Complex</span></p></blockquote><p>&nbsp;</p>',default,sysdate,defau lt);

insert into MBOARD
   VALUES(mseq.nextval,'릴 나스 엑스 “Old Town Road”, 다이아몬드 인 증 획득','<p><img  src="/TunaMusic/resources/editor/mphotoUpload/2019102920483361ae708b-ac46-438c-9d9b-944d646a3572.jpg" title="%EB %A6%B4%20%EB%82%98%EC%8A%A4%20%EC%97%91%EC%8A %A4.jpg"></p><p>&nbsp;</p><div style="text-size-adjust: 100%; box- sizing: border-box; color: rgb(51, 51, 51); font-family: " noto="" sans=""  kr";="" font-size:="" 16px;="" letter-spacing:="" -0.25px;="" background- color:="" rgb(255,="" 255,="" 255);="" text-align:="" justify;"=""><div  style="text-size-adjust: 100%; box-sizing: border-box; font-family: " noto=""  sans="" kr";="" font-size:="" 16px;="" letter-spacing:="" -0.25px;=""  background-color:="" rgb(255,="" 255,="" 255);="" text-align:=""  justify;"=""><div style="text-size-adjust: 100%; box-sizing: border- box;"><font face="Noto Sans KR" style="text-size-adjust: 100%; box-sizing:  border-box;"><span style="font-family: 나눔바른고딕, NanumBarunGothic,  NanumBarunGothicOTF; font-size: 11pt;">지난 2019년 상반기를 아주그냥 씹 어먹었던 릴 나스 엑스(Lil Nas X)의 메가 히트 싱글 "Old Town Road". 보도에 따 르면, "Old Town Road"가 역사상 가장 짧은 기간 만에 '다이아몬드(1,000만 장  판매) 인증'을 획득했다.&nbsp;</span></font></div><div style="text-size- adjust: 100%; box-sizing: border-box;"><font face="Noto Sans KR"  style="text-size-adjust: 100%; box-sizing: border-box;"><br style="text- size-adjust: 100%; box-sizing: border-box;"></font></div><div  style="text-size-adjust: 100%; box-sizing: border-box;"><font face="Noto  Sans KR" style="text-size-adjust: 100%; box-sizing: border-box;"><span  style="font-family: 나눔바른고딕, NanumBarunGothic,  NanumBarunGothicOTF; font-size: 11pt;">RIAA에서는 1,500회의 스트리밍 횟 수에 1장의 앨범 판매와 동등한 자격을 매기고 있다. 이 기준으로 따져보면, "Old  Town Road"는 지금까지 무려 150억회 가량의 스트리밍 지수를 끌어모았다는 것 이다.</span></font></div><div style="text-size-adjust: 100%; box-sizing:  border-box;"><font face="Noto Sans KR" style="text-size-adjust: 100%;  box-sizing: border-box;"><br style="text-size-adjust: 100%; box-sizing:  border-box;"></font></div><div style="text-size-adjust: 100%; box-sizing:  border-box;"><font face="Noto Sans KR" style="text-size-adjust: 100%;  box-sizing: border-box;"><span style="font-family: 나눔바른고딕,  NanumBarunGothic, NanumBarunGothicOTF; font-size: 11pt;">음악사 역사상 , 전 장르를 통틀어 다이아몬드 인증을 획득한 싱글은 40곡이 넘지 않는다. 힙합  장르에서는 에미넴(Eminem)의 "Lose Yourself", "Not Afraid", "Love the Way  You Lie", 맥클모어&amp;라이언 루이스(Macklemore &amp; Ryan Lewis)의  "Thrift Shop" 등이 다이아몬드 인증을 획득했던 바 있으며, 스트리밍 시장이 활성 화된 최근에는 포스트 말론(Post Malone)의 "Congratulations", 드레이크(Drake) 의 "God's Plan", 위켄드(The Weeknd)의 "The Hills" 등이 추가적으로 다이아몬 드 인증을 획득했다.</span></font></div></div></div><div><font  face="Noto Sans KR" style="text-size-adjust: 100%; box-sizing: border- box;"><br></font></div><p>&nbsp;</p>',default,sysdate,default);

INSERT INTO GOODS VALUES (SEQ_GOODS_NO.NEXTVAL,'TUNAMUSIC Membership', 8900);

COMMIT;