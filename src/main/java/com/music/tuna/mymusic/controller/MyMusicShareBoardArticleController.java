package com.music.tuna.mymusic.controller;

import com.music.tuna.mymusic.service.MyMusicShareBoardArticleService;
import com.music.tuna.mymusic.vo.MyMusicShareBoardArticle;
import com.music.tuna.mymusic.vo.MyMusicShareBoardArticleListPage;
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
    @RequestMapping("/list.do")
    public ModelAndView getList(ModelAndView mv, MyMusicShareBoardArticleListPage vo){
        int totalCount = myMusicShareBoardArticleService.getCount();
        int listCount = 16;
        //한 화면에 표시될 게시글의 최대 개수
        //전체 게시글 개수를 최대 개수로 나누어 전체 페이지 수를 구함
        int totalPage = totalCount/listCount;
        if(vo.getPage() == 0){
            vo.setPage(1);
        }

        //전체 페이지수가 딱 떨어지지 않을 경우 나머지를 표시해줘야하기때문에 +1을 해줌
        if(totalCount % listCount > 0){
            totalPage++;
        }
        if(totalPage < vo.getPage()){
            vo.setPage(totalPage);
        }

        int pageCount = 5;
        vo.setStartPage(((vo.getPage() -1)/ pageCount) * pageCount +1);
        vo.setEndPage(vo.getStartPage() + pageCount -1);
        if(vo.getEndPage() > totalPage){
            vo.setEndPage(totalPage);
        }
        vo.setEnd(vo.getPage() * listCount);
        vo.setStart(vo.getEnd() - listCount+1);
        vo.setPageContent(myMusicShareBoardArticleService.selectList(vo));
        mv.setViewName("/myMusicShareBoard/list");
        mv.addObject("articlePage", vo);
        return mv;
        //        mv.setViewName("/myMusicShareBoard/list");
    }
}
