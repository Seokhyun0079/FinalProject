package com.music.tuna.crowdFunding.model.service;

import com.music.tuna.crowdFunding.model.dao.FundingDAO;
import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.payment.vo.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class FundingServiceImpl implements FundingService {
    @Autowired
    FundingDAO fundingDAO;

    @Override
    public int getHotListCount() {
        return fundingDAO.getHotListCount();
    }
    @Override
    public int getNewListCount() {
        return fundingDAO.getNewListCount();
    }
    @Override
    public int getAlmostListCount() {
        return fundingDAO.getAlmostListCount();
    }

    @Override
    public ArrayList<Funding> selectHotList() {
        return fundingDAO.selectHotList();
    }
    @Override
    public ArrayList<Funding> selectNewList() {
        return fundingDAO.selectNewList();
    }
    @Override
    public ArrayList<Funding> selectAlmostList() {
        return fundingDAO.selectAlmostList();
    }

    @Override
    public Funding selectFunding(int fno) {
        return fundingDAO.selectFunding(fno);
    }

    @Override
    public Funding insertFunding(Funding fvo) {
        fundingDAO.insertFunding(fvo);
        Funding funding =  fundingDAO.lastInsertedFunding();
        fundingDAO.commit();
        return funding;
    }

    @Override
    public int insertReward(Goods gvo) {
        int result = fundingDAO.insertReward(gvo);
        fundingDAO.commit();
        return result;
    }

    @Override
    public Goods lastInsertedGoods() {
        Goods goods = fundingDAO.lastInsertedGoods();
        return goods;
    }


}
