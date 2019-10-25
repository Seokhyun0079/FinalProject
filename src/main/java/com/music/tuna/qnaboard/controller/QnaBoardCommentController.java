package com.music.tuna.qnaboard.controller;

import com.music.tuna.qnaboard.service.QnaBoardCommentService;
import com.music.tuna.qnaboard.vo.QnaBoardComment;
import com.music.tuna.qnaboard.vo.QnaBoardCommentPage;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class QnaBoardCommentController {
    @Autowired
   QnaBoardCommentService qnaBoardCommentService;
   @RequestMapping(value="/qnaBoard/comment/write.do")
   public void insertComment(QnaBoardComment vo, HttpServletResponse res){
       qnaBoardCommentService.insertComment(vo);
       QnaBoardCommentPage commentPage = new QnaBoardCommentPage();
       commentPage.setArticleNo(vo.getArticleNo());
       commentPage.setCommentList(qnaBoardCommentService.getCommentList(commentPage));
       JSONObject json = new JSONObject();
       json.put("result", commentPage);
       res.setContentType("application/x-json; charset=UTF-8");
       try{
           res.getWriter().print(json);
       }catch(IOException e){ }
    }
    @RequestMapping(value = "/qnaBoard/comment/list.do")
   public void getCommentList(QnaBoardCommentPage vo, HttpServletResponse res){
       vo.setCommentList(qnaBoardCommentService.getCommentList(vo));
        JSONObject json = new JSONObject();
        json.put("result", vo);
        res.setContentType("application/x-json; charset=UTF-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){
            e.printStackTrace();
        }
    }
}
