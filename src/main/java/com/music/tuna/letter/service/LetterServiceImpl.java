package com.music.tuna.letter.service;

import com.music.tuna.letter.dao.LetterDAO;
import com.music.tuna.letter.vo.Letter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Service
public class LetterServiceImpl implements LetterService {
    @Autowired
    LetterDAO letterDAO;
    @Override
    public void insertLetter(Letter vo) {
        letterDAO.insertLetter(vo);
        letterDAO.commit();
    }

    @Override
    public List<Letter> selectList(Letter vo) {
        List<Letter> list = new ArrayList<>();
        list.addAll(letterDAO.selectList(vo));
        String tmp = vo.getFromId();
        vo.setFromId(vo.getToId());
        vo.setToId(tmp);
        list.addAll(letterDAO.selectList(vo));
        Collections.sort(list);
        return list;
    }
}
