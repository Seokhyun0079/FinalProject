package com.music.tuna.crowdFunding.model.service;

import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.payment.vo.Goods;

import java.util.ArrayList;
import java.util.List;

public interface FundingService {
    public int getHotListCount();
    public int getNewListCount();
    public int getAlmostListCount();

    public ArrayList<Funding> selectHotList();
    public ArrayList<Funding> selectNewList();
    public ArrayList<Funding> selectAlmostList();

    public Funding selectFunding(int fno);

    public Funding insertFunding(Funding fvo);

    public int insertReward(Goods gvo);

    public Goods lastInsertedGoods();
}
