package com.music.tuna.crowdFunding.model.service;

import com.music.tuna.crowdFunding.model.dao.FundingDAO;
import com.music.tuna.crowdFunding.model.vo.Funding;
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
}
