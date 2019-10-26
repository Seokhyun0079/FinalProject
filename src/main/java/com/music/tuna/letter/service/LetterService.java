package com.music.tuna.letter.service;

import com.music.tuna.letter.vo.Letter;

import java.util.List;

public interface LetterService {
    void insertLetter(Letter vo);
    List<Letter> selectList(Letter vo);
}
