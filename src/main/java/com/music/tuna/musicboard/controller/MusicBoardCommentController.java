package com.music.tuna.musicboard.controller;

import com.music.tuna.musicboard.service.MusicBoardCommentService;
import com.music.tuna.musicboard.vo.MusicBoardComment;
import com.music.tuna.musicboard.vo.MusicBoardCommentPage;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class MusicBoardCommentController {
     @Autowired
    MusicBoardCommentService musicBoardCommentService;
    @RequestMapping(value="/musicBoard/comment/write.do")
    public void insertComment(MusicBoardComment vo, HttpServletResponse res){
        System.out.println(vo);
        musicBoardCommentService.insertComment(vo);
        MusicBoardCommentPage commentPage = new MusicBoardCommentPage();
        commentPage.setArticleNo(vo.getArticleNo());
        commentPage.setCommentList(musicBoardCommentService.getCommentList(commentPage));
        JSONObject json = new JSONObject();
        json.put("result", commentPage);
        res.setContentType("application/x-json; charset=UTF-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){ }
     }
     @RequestMapping(value = "/musicBoard/comment/list.do")
    public void getCommentList(MusicBoardCommentPage vo, HttpServletResponse res){
        System.out.println(vo);
        vo.setCommentList(musicBoardCommentService.getCommentList(vo));
         JSONObject json = new JSONObject();
         json.put("result", vo);
         res.setContentType("application/x-json; charset=UTF-8");
         try{
             res.getWriter().print(json);
         }catch(IOException e){ }
     }
}
