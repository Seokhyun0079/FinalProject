package com.music.tuna.mymusic.service;

import com.music.tuna.mymusic.dao.MyMusicDAO;
import com.music.tuna.mymusic.vo.MyMusic;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MyMusicServiceImpl implements  MyMusicService{
    @Autowired
    MyMusicDAO myMusicDAO;
    @Override
    public List<MyMusic> getMyMusicList(MyMusic vo) {
        return myMusicDAO.getMyMusicList(vo);
    }
}
