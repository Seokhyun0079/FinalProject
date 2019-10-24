package com.music.tuna.mymusic.controller;

import com.music.tuna.mymusic.service.MyMusicShareBoardCommentService;
import com.music.tuna.mymusic.vo.MyMusicShareBoardComment;
import com.music.tuna.mymusic.vo.MyMusicShareBoardCommentPage;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/myMusicShareBoard/comment")
public class MyMusicShareBoardCommentController {
    @Autowired
    MyMusicShareBoardCommentService myMusicShareBoardCommentService;
    @RequestMapping("/write.do")
    public void insertComment(MyMusicShareBoardComment vo, HttpServletResponse res){
        myMusicShareBoardCommentService.insertComment(vo);
        MyMusicShareBoardCommentPage commentPage = new MyMusicShareBoardCommentPage();
        commentPage.setArticleNo(vo.getArticleNo());
        commentPage.setCommentList(myMusicShareBoardCommentService.getCommentList(commentPage));
        JSONObject json = new JSONObject();
        json.put("result", commentPage);
        res.setContentType("application/x-json; charset=UTF-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){}
    }
    @RequestMapping("/list.do")
    public void getCommentList(MyMusicShareBoardCommentPage vo, HttpServletResponse res){
        vo.setCommentList(myMusicShareBoardCommentService.getCommentList(vo));
        JSONObject json = new JSONObject();
        json.put("result", vo);
        res.setContentType("application/x-json; charset=utf-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){
            e.printStackTrace();
        }
    }
}
