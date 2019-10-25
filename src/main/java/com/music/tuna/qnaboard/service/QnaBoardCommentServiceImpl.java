package com.music.tuna.qnaboard.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.tuna.qnaboard.dao.QnaBoardCommentDao;
import com.music.tuna.qnaboard.vo.QnaBoardComment;
import com.music.tuna.qnaboard.vo.QnaBoardCommentPage;

@Service
public class QnaBoardCommentServiceImpl implements QnaBoardCommentService {
	
	@Autowired
	QnaBoardCommentDao qnaBoardCommentDao;
	
	@Override
	public void insertComment(QnaBoardComment vo) {
		qnaBoardCommentDao.insertComment(vo);
		
	}

	@Override
	public List<QnaBoardComment> getCommentList(QnaBoardCommentPage vo) {
		return qnaBoardCommentDao.getCommentList(vo);
	}

}
