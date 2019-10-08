package com.music.tuna.musicboard.controller;

import com.music.tuna.musicboard.service.MusicBoardCommentService;
import com.music.tuna.musicboard.vo.MusicBoardComment;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MusicBoardCommentController {
     @Autowired
    MusicBoardCommentService musicBoardCommentService;
    @RequestMapping(value="/musicBoard/comment/write.do")
    public void insertComment(MusicBoardComment vo){
        musicBoardCommentService.insertComment(vo);
     }
     @RequestMapping(value = "/musicBoard/comment/list.do")
    public void getCommentList(){

     }
}
