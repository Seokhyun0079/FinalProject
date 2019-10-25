package com.music.tuna.qnaboard.service;

import java.util.List;

import com.music.tuna.qnaboard.vo.QnaBoardArticle;
import com.music.tuna.qnaboard.vo.QnaBoardArticleListPage;

public interface QnaBoardArticleService {
	public QnaBoardArticle insertArticle(QnaBoardArticle vo);
	public QnaBoardArticle getArticle(QnaBoardArticle vo);
	public List<QnaBoardArticle> getArticleList(QnaBoardArticleListPage vo);
	public int getCount();
}
