package com.music.tuna.musicboard.service;

import com.music.tuna.musicboard.vo.MusicBoardComment;

import java.util.List;

public interface MusicBoardCommentService {
    public void insertComment(MusicBoardComment vo);
    public List<MusicBoardComment> getCommentList(MusicBoardComment vo);
}
