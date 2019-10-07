package com.music.tuna.musicboard.controller;

import com.music.tuna.musicboard.service.MusicBoardService;
import com.music.tuna.musicboard.vo.BoardArticleListRequest;
import com.music.tuna.musicboard.vo.MusicBoardArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Controller
public class MusicBoardArticleController {
    @Autowired
    MusicBoardService musicBoardService;
    @RequestMapping(value = "/musicBoard/article/write.do", method = RequestMethod.GET)
    public String  insertArticleGet(){
        return "/musicBoard/write";
    }
    @RequestMapping(value = "/musicBoard/article/write.do", method = RequestMethod.POST)
    public ModelAndView insertArticlePost(MusicBoardArticle vo, ModelAndView mv){
        MusicBoardArticle newItem = null;
        if(!vo.getUploadFile().isEmpty()){
            vo.setFileName(new Date().getTime() + vo.getUploadFile().getOriginalFilename());
            try {
                vo.getUploadFile().transferTo(new File("D:/Programings/SpringWorkSpace/TunaMusic/src/main/webapp/resources/upload/"+vo.getFileName()));
                newItem = musicBoardService.insertArticle(vo);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        System.out.println(vo);
        mv.setViewName("/musicBoard/read");
        mv.addObject("article", newItem);
        return mv;
    }
    @RequestMapping(value = "/musicBoard/article/read.do")
    public ModelAndView getArticle(ModelAndView mv, MusicBoardArticle vo){
        mv.setViewName("/musicBoard/read");
        mv.addObject("article", musicBoardService.getArticle(vo));
        return mv;
    }
    @RequestMapping(value="/musicBoard/article/list.do")
    public ModelAndView getList(ModelAndView mv, BoardArticleListRequest vo){
        int totalCount = musicBoardService.getCount();
        int listCount = 8;
        int totalPage = totalCount/listCount;
        if(vo.getPage() == 0){
            vo.setPage(1);
        }

        if(totalCount % listCount > 0){
            totalPage++;
        }

        if(totalPage < vo.getPage()){
            vo.setPage(totalPage);
        }
        int pageCount = 10;
        vo.setStartPage(((vo.getPage() -1)/ pageCount) * pageCount +1);
        vo.setEndPage(vo.getStartPage() + pageCount -1);

        if(vo.getEndPage() > totalPage){
           vo.setEndPage(totalPage);
        }
        vo.setEnd(vo.getPage() * listCount);
        vo.setStart(vo.getEnd() - listCount+1);

        mv.setViewName("/musicBoard/list");
        mv.addObject("articleList", musicBoardService.getArticleList(vo));
        return mv;
    }
}
