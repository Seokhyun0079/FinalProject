package com.music.tuna.mymusic.service;

import com.music.tuna.mymusic.dao.MyMusicShareBoardCommentDAO;
import com.music.tuna.mymusic.vo.MyMusicShareBoardComment;
import com.music.tuna.mymusic.vo.MyMusicShareBoardCommentPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyMusicShareBoardCommentServiceImpl implements  MyMusicShareBoardCommentService{
    @Autowired
    MyMusicShareBoardCommentDAO myMusicShareBoardCommentDAO;

    @Override
    public void insertComment(MyMusicShareBoardComment vo) {
        myMusicShareBoardCommentDAO.insertComment(vo);
        myMusicShareBoardCommentDAO.commit();
    }

    @Override
    public List<MyMusicShareBoardComment> getCommentList(MyMusicShareBoardCommentPage vo) {
        return myMusicShareBoardCommentDAO.selectList(vo);
    }
}
