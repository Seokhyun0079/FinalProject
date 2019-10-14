package com.music.tuna.mymusic.service;

import com.music.tuna.mymusic.vo.MyMusic;

import java.util.List;

public interface MyMusicService {
    public List<MyMusic> getMyMusicList(MyMusic vo);
}
