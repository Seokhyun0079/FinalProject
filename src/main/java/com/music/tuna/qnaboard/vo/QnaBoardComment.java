package com.music.tuna.qnaboard.vo;

public class QnaBoardComment {
    private String id;
    private int articleNo;
    private int commentNo;
    private int replyNo;
    private String content;
    private String nickname;
    private String profileIMG;
    
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public int getArticleNo() {
		return articleNo;
	}
	
	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}
	
	public int getCommentNo() {
		return commentNo;
	}
	
	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}
	
	public int getReplyNo() {
		return replyNo;
	}
	
	public void setReplyNo(int replyNo) {
		this.replyNo = replyNo;
	}
	
	public String getContent() {
		return content;
	}
	
	public void setContent(String content) {
		this.content = content;
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

	@Override
	public String toString() {
		return "QnaBoardComment [id=" + id + ", articleNo=" + articleNo + ", commentNo=" + commentNo + ", replyNo="
				+ replyNo + ", content=" + content + ", nickname=" + nickname + ", profileIMG=" + profileIMG + "]";
	}


}
