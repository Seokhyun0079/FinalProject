package com.music.tuna.mymusic.service;

import com.music.tuna.mymusic.vo.MyMusic;

import java.util.List;

public interface MyMusicService {
    public List<MyMusic> getMyMusicList(MyMusic vo);
    public void insertMyMusic(MyMusic vo);
    void deleteMyMusic(MyMusic vo);
    int insertedMyMusicCount(MyMusic vo);
	public void deleteAllMyMusic(MyMusic vo);
}
