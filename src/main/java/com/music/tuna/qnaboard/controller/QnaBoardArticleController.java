package com.music.tuna.qnaboard.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.music.tuna.member.model.vo.Member;
import com.music.tuna.musicboard.vo.MusicBoardArticle;
import com.music.tuna.qnaboard.service.QnaBoardArticleService;
import com.music.tuna.qnaboard.vo.QnaBoardArticle;
import com.music.tuna.qnaboard.vo.QnaBoardArticleListPage;
import com.music.tuna.util.SHBoardFileUpload;

@Controller
public class QnaBoardArticleController {
   
    @Autowired
    QnaBoardArticleService qnaBoardArticleService;
    
    @RequestMapping(value = "/qnaBoard/article/write.do", method = RequestMethod.GET)
    public String insertArticleGet(){
        return "/qnaBoard/write";
    }
    
    @RequestMapping(value = "/qnaBoard/article/write.do", method = RequestMethod.POST)
    public String insertArticlePost(QnaBoardArticle vo, HttpServletRequest request){
        int articleNo = 0;
            try {
                vo.setFileName(SHBoardFileUpload.fileUpload(vo.getUploadFile(), request.getSession().getServletContext().getRealPath("/resources/upload/")));
            } catch (IOException e) {
                e.printStackTrace();
                
            }
        articleNo = qnaBoardArticleService.insertArticle(vo);
        return "redirect:read.do?articleNo="+articleNo;
    }
    
    @RequestMapping(value = "/qnaBoard/article/read.do")
    public ModelAndView getArticle(ModelAndView mv, QnaBoardArticle vo, HttpSession httpSession){
       
       vo.setId(((Member)httpSession.getAttribute("loginUser")).getUserId());
       vo.setGrade(((Member)httpSession.getAttribute("loginUser")).getGrade());
       
        mv.setViewName("/qnaBoard/read");
        mv.addObject("article", qnaBoardArticleService.getArticle(vo));
        return mv;
    }
    
    
    @RequestMapping(value="/qnaBoard/article/list.do")
    public ModelAndView getList(ModelAndView mv, QnaBoardArticleListPage vo, HttpSession httpSession) {
       
       // 일단 전체적으로 공지사항 (관리자로 뿌려주고)
       vo.setNoticePageContent(qnaBoardArticleService.getNoticeArticleList(vo));
       System.out.println(vo.getNoticePageContent().size());
       vo.setId(((Member)httpSession.getAttribute("loginUser")).getUserId());
       vo.setGrade(((Member)httpSession.getAttribute("loginUser")).getGrade());
       
       // if문 써서 grade가 A면 전체 열람 B나 C면 본인이 쓴 글만 열람
       if(vo.getGrade().equals("A")) {
          
            int totalCount = qnaBoardArticleService.getCount();
            //한 화면에 표시될 게시글의 최대 개수
            int listCount = 16;
            //전체 게시글 개수를 최대 개수로 나누어 전체 페이지 수를 구함
            int totalPage = totalCount/listCount;
            
            if(vo.getPage() == 0){
                vo.setPage(1);
            }

            // 전체 페이지수가 딱 떨어지지 않을 경우 나머지를 표시해줘야하기때문에 +1을 해줌
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
            vo.setPageContent(qnaBoardArticleService.getAllArticleList(vo));
            mv.setViewName("/qnaBoard/list");
            mv.addObject("articlePage", vo);
            
            System.out.println("id11   :" + vo.getId() + "page11   :" + vo.getPage() + "grade11 : " + vo.getGrade());
            
            return mv;

       }else {
            
            int totalCount = qnaBoardArticleService.getCount();
            //한 화면에 표시될 게시글의 최대 개수
            int listCount = 16;
            //전체 게시글 개수를 최대 개수로 나누어 전체 페이지 수를 구함
            int totalPage = totalCount/listCount;
            
            if(vo.getPage() == 0){
                vo.setPage(1);
            }

            // 전체 페이지수가 딱 떨어지지 않을 경우 나머지를 표시해줘야하기때문에 +1을 해줌
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
            vo.setPageContent(qnaBoardArticleService.getArticleList(vo));
            mv.setViewName("/qnaBoard/list");
            mv.addObject("articlePage", vo);
            
            System.out.println("id22   :" + vo.getId() + "page22   :" + vo.getPage() + "grade22 : " + vo.getGrade());
            
            return mv;
            
       }
    }

}