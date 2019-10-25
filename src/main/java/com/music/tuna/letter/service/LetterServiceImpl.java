package com.music.tuna.letter.service;

import com.music.tuna.letter.dao.LetterDAO;
import com.music.tuna.letter.vo.Letter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LetterServiceImpl implements LetterService {
    @Autowired
    LetterDAO letterDAO;
    @Override
    public void insertLetter(Letter vo) {
        letterDAO.insertLetter(vo);
        letterDAO.commit();
    }
}
