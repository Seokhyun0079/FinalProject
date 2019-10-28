package com.music.tuna.letter.controller;

import com.music.tuna.letter.service.LetterService;
import com.music.tuna.letter.vo.Letter;
import com.music.tuna.member.model.vo.Member;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.mail.Session;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

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
    public void insertLetterPost(Letter vo, HttpSession httpSession, HttpServletResponse res){
        vo.setFromId(((Member)httpSession.getAttribute("loginUser")).getUserId());
        letterService.insertLetter(vo);
        letterService.selectList(vo);
        JSONObject json = new JSONObject();
        json.put("result", letterService.selectList(vo));
        res.setContentType("application/x-json; charset=utf-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){
            e.printStackTrace();
        }
    }
    @RequestMapping(value = "/list.do")
    public void listLetter(Letter vo, HttpSession httpSession, HttpServletResponse res){
        vo.setFromId(((Member)httpSession.getAttribute("loginUser")).getUserId());
        letterService.selectList(vo);
        JSONObject json = new JSONObject();
        json.put("result", letterService.selectList(vo));
        res.setContentType("application/x-json; charset=utf-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){
            e.printStackTrace();
        }
    }
}
