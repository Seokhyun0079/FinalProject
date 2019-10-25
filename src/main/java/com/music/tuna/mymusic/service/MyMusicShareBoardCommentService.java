package com.music.tuna.mymusic.service;

import com.music.tuna.mymusic.vo.MyMusicShareBoardComment;
import com.music.tuna.mymusic.vo.MyMusicShareBoardCommentPage;

import java.util.List;

public interface MyMusicShareBoardCommentService {
    void insertComment(MyMusicShareBoardComment vo);
    List<MyMusicShareBoardComment> getCommentList(MyMusicShareBoardCommentPage vo);
}
