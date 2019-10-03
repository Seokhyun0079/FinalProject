package com.music.tuna.musicboard.controller;

import com.music.tuna.musicboard.service.MusicBoardService;
import com.music.tuna.musicboard.vo.MusicBoardArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import javax.xml.crypto.Data;
import java.io.File;
import java.io.IOException;
import java.util.Date;

@Controller
public class    MusicBoardController {
    @Autowired
    MusicBoardService musicBoardService;
    @RequestMapping(value = "/musicBoard/article/write.do", method = RequestMethod.GET)
    public String  insertArticleGet(){
        return "/musicBoard/write";
    }
    @RequestMapping(value = "/musicBoard/article/write.do", method = RequestMethod.POST)
    public String insertArticlePost(MusicBoardArticle vo, ModelAndView mv){
        if(!vo.getUploadFile().isEmpty()){
            vo.setFileName(new Date().getTime() + vo.getUploadFile().getOriginalFilename());
            try {
                vo.getUploadFile().transferTo(new File("D:/Programings/SpringWorkSpace/TunaMusic/src/main/webapp/resources/upload/"+vo.getFileName()));
                musicBoardService.insertArticle(vo);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        return "/musicBoard/read";
    }
}
