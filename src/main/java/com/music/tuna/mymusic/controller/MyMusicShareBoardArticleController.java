package com.music.tuna.mymusic.controller;

import com.music.tuna.mymusic.service.MyMusicShareBoardArticleService;
import com.music.tuna.mymusic.vo.MyMusicShareBoardArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller()
@RequestMapping("/myMusicShareBoard/article")
public class MyMusicShareBoardArticleController {
    @Autowired
    MyMusicShareBoardArticleService myMusicShareBoardArticleService;
    @RequestMapping(value = "/write.do", method = RequestMethod.GET)
    public String insertArticleGet(){
        return "/myMusicShareBoard/write";
    }
    @RequestMapping(value = "/write.do", method = RequestMethod.POST)
    public String insertArticlePost(MyMusicShareBoardArticle vo){
        int articleNo = myMusicShareBoardArticleService.insertArticle(vo);
        return "redirect:read.do?articleNo="+articleNo;
    }
    @RequestMapping("/read.do")
    public ModelAndView getArticle(MyMusicShareBoardArticle vo, ModelAndView mv){
        mv.setViewName("/myMusicShareBoard/read");
        mv.addObject("article", myMusicShareBoardArticleService.selectArticleByArticleNo(vo));
        return mv;
    }
}
