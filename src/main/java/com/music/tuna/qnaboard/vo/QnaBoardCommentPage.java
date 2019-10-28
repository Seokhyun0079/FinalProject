package com.music.tuna.qnaboard.vo;

import java.util.List;

public class QnaBoardCommentPage {
    private List<QnaBoardComment> commentList;
    private int count;
    private int articleNo;
    
	public List<QnaBoardComment> getCommentList() {
		return commentList;
	}
	
	public void setCommentList(List<QnaBoardComment> commentList) {
		this.commentList = commentList;
	}
	
	public int getCount() {
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}
	
	public int getArticleNo() {
		return articleNo;
	}
	
	public void setArticleNo(int articleNo) {
		this.articleNo = articleNo;
	}

	@Override
	public String toString() {
		return "QnaBoardCommentPage [commentList=" + commentList + ", count=" + count + ", articleNo=" + articleNo
				+ "]";
	}
    
}
