package com.music.tuna.musicboard.service;

import com.music.tuna.chart.dao.ChartDao;
import com.music.tuna.chart.vo.Chart;
import com.music.tuna.musicboard.dao.MusicBoardArticleDAO;
import com.music.tuna.musicboard.vo.MusicBoardArticleListPage;
import com.music.tuna.musicboard.vo.MusicBoardArticle;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.sql.Date;
import java.util.List;

@Service
public class MusicBoardArticleServiceImpl implements MusicBoardArticleService {
    @Autowired
    private MusicBoardArticleDAO musicBoardArticleDAO;
    
    @Autowired
    private ChartDao chartDao;
    @Override
    public MusicBoardArticle insertArticle(MusicBoardArticle vo){
        musicBoardArticleDAO.insertArticle(vo);
        MusicBoardArticle newArticle =  musicBoardArticleDAO.lastInsertedArticle();
        musicBoardArticleDAO.commit();
        return newArticle;
    }

    @Override
    public MusicBoardArticle getArticle(MusicBoardArticle vo) {
    	
    	Chart chart = new Chart();
    	
    	chart.setArticleNo(vo.getArticleNo());
    	chart.setArticleDate(new Date(System.currentTimeMillis()));
    	chart = chartDao.selectById(chart);
		    if(chart == null) {
				// 새로운 챠트 컬럼 생성해서 삽입
		    	System.out.println("새로운 행 생성");
			}else {
				chart.setReadCount(chart.getReadCount()+1);
		    	System.out.println("기존 행 수정");
			}
    	
        vo.setReadCount(musicBoardArticleDAO.getReadCount(vo)+1);
        musicBoardArticleDAO.increaseReadCount(vo);
        MusicBoardArticle newItem = musicBoardArticleDAO.getArticle(vo);
        newItem.setPrev(musicBoardArticleDAO.getPrevArticleNo(vo));
        newItem.setNext(musicBoardArticleDAO.getNextArticleNo(vo));
        commit();
        return newItem;
    }

    @Override
    public List<MusicBoardArticle> getArticleList(MusicBoardArticleListPage vo) {
        return musicBoardArticleDAO.getArticleList(vo);
    }
    @Override
    public int getCount() {
        return musicBoardArticleDAO.getCount();
    }

    @Override
    public int updateBest(MusicBoardArticle vo) {
        musicBoardArticleDAO.updateBest(vo);
        commit();
        return musicBoardArticleDAO.getBest(vo);
    }

    @Override
    public int updateBad(MusicBoardArticle vo) {
        musicBoardArticleDAO.updateBad(vo);
        commit();
        return musicBoardArticleDAO.getBad(vo);
    }

    public void commit(){ musicBoardArticleDAO.commit();}
}
