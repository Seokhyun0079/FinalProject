package com.music.tuna.crowdFunding.model.service;

import com.music.tuna.crowdFunding.model.dao.FundingDAO;
import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.payment.vo.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FundingServiceImpl implements FundingService {
    @Autowired
    FundingDAO fundingDAO;

    @Override
    public List<Funding> getArticleList(Funding funding) {
        return null;
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
        System.out.println("[fserviceImpl] 리워드 넣기");
        int result = fundingDAO.insertReward(gvo);
        fundingDAO.commit();
        return result;
    }

    @Override
    public Goods lastInsertedGoods() {
        System.out.println("[fserviceImpl] lastInserted");
        Goods goods = fundingDAO.lastinsertedGoods();
        return goods;
    }


}
