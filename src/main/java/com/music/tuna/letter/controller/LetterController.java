package com.music.tuna.letter.controller;

import com.music.tuna.letter.service.LetterService;
import com.music.tuna.letter.vo.Letter;
import com.music.tuna.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/letter")
public class LetterController {
    @Autowired
    LetterService letterService;
    @RequestMapping(value = "/write.do", method = RequestMethod.GET)
    public String insertLetterGet(){
        return "/letter/letter";
    }
    @RequestMapping(value = "/write.do", method = RequestMethod.POST)
    public void insertLetterPost(Letter vo, HttpSession httpSession){
        vo.setFromId(((Member)httpSession.getAttribute("loginUser")).getUserId());
        letterService.insertLetter(vo);
    }
    @RequestMapping(value = "/list.do")
    public void listLetter(){
        //밥먹고 오면 이거 구현해
    }
}
