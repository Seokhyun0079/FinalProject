package com.music.tuna.crowdFunding.model.service;

import com.music.tuna.crowdFunding.model.vo.Funding;

import java.util.List;

public interface FundingService {
    public List<Funding> getArticleList(Funding funding);
}