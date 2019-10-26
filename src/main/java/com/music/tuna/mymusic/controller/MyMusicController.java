package com.music.tuna.mymusic.controller;

import com.music.tuna.member.model.vo.Member;
import com.music.tuna.mymusic.service.MyMusicService;
import com.music.tuna.mymusic.vo.MyMusic;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@Controller
public class MyMusicController {
    @Autowired
    MyMusicService myMusicService;
    @RequestMapping("/myMusic/list.do")
    public void getList(HttpServletResponse res, HttpSession httpSession){
        MyMusic vo = new MyMusic();
        vo.setId(((Member)httpSession.getAttribute("loginUser")).getUserId());
        JSONObject json = new JSONObject();
        json.put("result", myMusicService.getMyMusicList(vo));
        res.setContentType("application/x-json; charset=utf-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){
            e.printStackTrace();
        }
    }
    @RequestMapping("/myMusic/add.do")
    public void insertMyMusic(MyMusic vo, HttpSession httpSession, HttpServletResponse res){
        vo.setId(((Member)httpSession.getAttribute("loginUser")).getUserId());
        myMusicService.insertMyMusic(vo);
        JSONObject json = new JSONObject();
        json.put("result", myMusicService.getMyMusicList(vo));
        json.put("status", "add");
        res.setContentType("application/x-json; charset=utf-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){
            e.printStackTrace();
        }
    }
    @RequestMapping("/myMusic/remove.do")
    public void deleteMyMusic(MyMusic vo, HttpSession httpSession, HttpServletResponse res){
        vo.setId(((Member)httpSession.getAttribute("loginUser")).getUserId());
        myMusicService.deleteMyMusic(vo);
        JSONObject json = new JSONObject();
        json.put("result", myMusicService.getMyMusicList(vo));
        json.put("status", "remove");
        res.setContentType("application/x-json; charset=utf-8");
        try{
            res.getWriter().print(json);
        }catch(IOException e){
            e.printStackTrace();
        }
    }
}
