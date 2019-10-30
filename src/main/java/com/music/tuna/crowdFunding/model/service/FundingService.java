package com.music.tuna.crowdFunding.model.service;

import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.crowdFunding.model.vo.FundingList;
import com.music.tuna.payment.vo.Goods;

import java.util.ArrayList;
import java.util.List;

public interface FundingService {
    public int getHotListCount();
    public int getNewListCount();
    public int getAlmostListCount();

    public List<Funding> selectHotList();
    public List<Funding> selectNewList();
    public List<Funding> selectAlmostList();

    public Funding selectFunding(int fno);

    public Funding insertFunding(Funding fvo);

    public int insertReward(Goods gvo);

    public Goods lastInsertedGoods();

    List<Funding> getHotList(FundingList lvo);
    List<Funding> getNewList(FundingList lvo);
    List<Funding> getAlmostList(FundingList lvo);

    public int modifyFunding(Funding fd);

    public List<Funding> getMyFundingList(String userId);
}
