package com.music.tuna.qnaboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.tuna.musicboard.vo.MusicBoardArticle;
import com.music.tuna.qnaboard.dao.QnaBoardArticleDao;
import com.music.tuna.qnaboard.vo.QnaBoardArticle;
import com.music.tuna.qnaboard.vo.QnaBoardArticleListPage;

@Service
public class QnaBoardArticleServiceImpl implements QnaBoardArticleService {
	
	@Autowired
	private QnaBoardArticleDao qnaBoardArticleDao;

	@Override
	public QnaBoardArticle insertArticle(QnaBoardArticle vo) {
		qnaBoardArticleDao.insertArticle(vo);
		QnaBoardArticle newArticle = qnaBoardArticleDao.lastInsertedArticle();
		qnaBoardArticleDao.commit();
		return newArticle;
	}

	@Override
	public QnaBoardArticle getArticle(QnaBoardArticle vo) {
		vo.setReadCount(qnaBoardArticleDao.getReadCount(vo)+1);
        qnaBoardArticleDao.increaseReadCount(vo);
        QnaBoardArticle newItem = qnaBoardArticleDao.getArticle(vo);
        newItem.setPrev(qnaBoardArticleDao.getPrevArticleNo(vo));
        newItem.setNext(qnaBoardArticleDao.getNextArticleNo(vo));
        qnaBoardArticleDao.commit();
        return newItem;
	}

	@Override
	public List<QnaBoardArticle> getArticleList(QnaBoardArticleListPage vo) {
		return qnaBoardArticleDao.getArticleList(vo);
	}

	@Override
	public int getCount() {
		return qnaBoardArticleDao.getCount();
	}

}
