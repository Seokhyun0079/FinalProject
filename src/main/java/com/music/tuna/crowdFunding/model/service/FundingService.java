package com.music.tuna.crowdFunding.model.service;

import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.payment.vo.Goods;

import java.util.List;

public interface FundingService {
    public List<Funding> getArticleList(Funding funding);

    public Funding selectFunding(int fno);

    public Funding insertFunding(Funding fvo);

    public int insertReward(Goods gvo);

    public Goods lastInsertedGoods();
}
