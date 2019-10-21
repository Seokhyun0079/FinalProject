package com.music.tuna.mymusic.controller;

import com.music.tuna.mymusic.vo.MyMusicShareBoard;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller()
@RequestMapping("/myMusicShareBoard/article")
public class MyMusicShareBoardArticleController {
    
    @RequestMapping(value = "/write.do", method = RequestMethod.GET)
    public String insertArticleGet(){
        return "/myMusicShareBoard/write";
    }
    @RequestMapping(value = "/write.do", method = RequestMethod.POST)
    public String insertArticlePost(){
        MyMusicShareBoard newItem = null;

        return null;
    }

}
