package com.music.tuna.qnaboard.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class QnaBoardArticle {
    private int articleNo;
    private String id;
    private String title;
    private String fileName;
    private String albumFile;
    private String text;
    private String grade;
    private String nickname;
    private String profileIMG;
    private Date date;
    //조인을 통해 연결한 값
    private int readCount;
    //실제론 테이블에 들어가지 않는 값들
    private int start;
    private int last;
    private int page;
    private int commentCount;
    private MultipartFile uploadFile;
    private MultipartFile albumUploadFile;
    private int prev;
    private int next;
    private String nickName;
    
	public int getArticleNo() {
		return articleNo;
	}
	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getAlbumFile() {
		return albumFile;
	}
	public void setAlbumFile(String albumFile) {
		this.albumFile = albumFile;
	}
	public String getText() {
		return text;
	}
	public void setText(String text) {
		this.text = text;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getProfileIMG() {
		return profileIMG;
	}
	public void setProfileIMG(String profileIMG) {
		this.profileIMG = profileIMG;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public int getReadCount() {
		return readCount;
	}
	public void setReadCount(int readCount) {
		this.readCount = readCount;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getLast() {
		return last;
	}
	public void setLast(int last) {
		this.last = last;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public MultipartFile getAlbumUploadFile() {
		return albumUploadFile;
	}
	public void setAlbumUploadFile(MultipartFile albumUploadFile) {
		this.albumUploadFile = albumUploadFile;
	}
	public int getPrev() {
		return prev;
	}
	public void setPrev(int prev) {
		this.prev = prev;
	}
	public int getNext() {
		return next;
	}
	public void setNext(int next) {
		this.next = next;
	}
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	
	@Override
	public String toString() {
		return "QnaBoardArticle [articleNo=" + articleNo + ", id=" + id + ", title=" + title + ", fileName=" + fileName
				+ ", albumFile=" + albumFile + ", text=" + text + ", grade=" + grade + ", nickname=" + nickname
				+ ", profileIMG=" + profileIMG + ", date=" + date + ", readCount=" + readCount + ", start=" + start
				+ ", last=" + last + ", page=" + page + ", commentCount=" + commentCount + ", uploadFile=" + uploadFile
				+ ", albumUploadFile=" + albumUploadFile + ", prev=" + prev + ", next=" + next + ", nickName="
				+ nickName + "]";
	}
    
    
    
    
    
}