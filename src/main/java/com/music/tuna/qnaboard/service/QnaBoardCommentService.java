package com.music.tuna.qnaboard.service;

import java.util.List;

import com.music.tuna.qnaboard.vo.QnaBoardComment;
import com.music.tuna.qnaboard.vo.QnaBoardCommentPage;

public interface QnaBoardCommentService {
    public void insertComment(QnaBoardComment vo);
    public List<QnaBoardComment> getCommentList(QnaBoardCommentPage vo);
}
