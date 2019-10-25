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
    public int insertArticle(MusicBoardArticle vo){
        musicBoardArticleDAO.insertArticle(vo);
        int articleNo =  musicBoardArticleDAO.lastInsertedArticle(vo);
        musicBoardArticleDAO.commit();
        return articleNo;
    }

    @Override
    public MusicBoardArticle getArticle(MusicBoardArticle vo) {
    	
    	Chart chart = new Chart();
    	
    	chart.setArticleNo(vo.getArticleNo());
    	chart.setArticleDate(new Date(System.currentTimeMillis()));
    	Chart checkChart = chartDao.selectById(chart);
		    if(checkChart == null) {
		    	chartDao.insertChart(chart);
		    	chartDao.commit();
			}else {
				checkChart.setReadCount(checkChart.getReadCount()+1);
				chartDao.updateChart(checkChart);
                chartDao.commit();
			}
    	
        vo.setReadCount(musicBoardArticleDAO.getReadCount(vo)+1);
        musicBoardArticleDAO.increaseReadCount(vo);
        MusicBoardArticle newItem = musicBoardArticleDAO.getArticle(vo);
        newItem.setPrev(musicBoardArticleDAO.getPrevArticleNo(vo));
        newItem.setNext(musicBoardArticleDAO.getNextArticleNo(vo));
        musicBoardArticleDAO.commit();
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
        musicBoardArticleDAO.commit();
        return musicBoardArticleDAO.getBest(vo);
    }

    @Override
    public int updateBad(MusicBoardArticle vo) {
        musicBoardArticleDAO.updateBad(vo);
        musicBoardArticleDAO.commit();
        return musicBoardArticleDAO.getBad(vo);
    }

}
