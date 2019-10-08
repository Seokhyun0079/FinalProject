package com.music.tuna.musicboard.service;

import com.music.tuna.musicboard.dao.MusicBoardCommentDAO;
import com.music.tuna.musicboard.vo.MusicBoardComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MusicBoardCommentServiceImpl implements MusicBoardCommentService {
    @Autowired
    MusicBoardCommentDAO musicBoardCommentDAO;
    @Override
    public void insertComment(MusicBoardComment vo) {
        musicBoardCommentDAO.insertComment(vo);
    }
}
