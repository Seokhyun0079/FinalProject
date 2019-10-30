package com.music.tuna.crowdFunding.model.service;

import com.music.tuna.crowdFunding.model.dao.FundingDAO;
import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.crowdFunding.model.vo.FundingList;
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
    public List<Funding> selectHotList() {
        return fundingDAO.selectHotList();
    }
    @Override
    public List<Funding> selectNewList() {
        return fundingDAO.selectNewList();
    }
    @Override
    public List<Funding> selectAlmostList() {
        return fundingDAO.selectAlmostList();
    }

    @Override
    public Funding selectFunding(int fno) {
        return fundingDAO.selectFunding(fno);
    }

    @Override
    public Funding insertFunding(Funding fvo) {
        int res = fundingDAO.insertFunding(fvo);
        if(res>0) { fundingDAO.commit();}
        else {fundingDAO.rollback();}
        Funding funding =  fundingDAO.lastInsertedFunding();
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

    @Override
    public List<Funding> getHotList(FundingList lvo) {
        return fundingDAO.getHotList(lvo);
    }

    @Override
    public List<Funding> getNewList(FundingList lvo) {
        return fundingDAO.getNewList(lvo);
    }

    @Override
    public List<Funding> getAlmostList(FundingList lvo) {
        return fundingDAO.getAlmostList(lvo);
    }

    @Override
    public int modifyFunding(Funding fd) {
        int result = fundingDAO.modifyFunding(fd);
        if(result>0)    fundingDAO.commit();
        else    fundingDAO.rollback();
        return result;
    }

    @Override
    public List<Funding> getMyFundingList(String userId) {
        return fundingDAO.getMyFundingList(userId);
    }


}
