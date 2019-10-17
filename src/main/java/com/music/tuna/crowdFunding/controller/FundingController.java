package com.music.tuna.crowdFunding.controller;

import com.music.tuna.crowdFunding.model.service.FundingService;
import com.music.tuna.crowdFunding.model.vo.Funding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/crowdFunding")
public class FundingController {

    @Autowired
    private FundingService fundingService;

    // url mapping 먼저 해놓음
    @RequestMapping(value = "/fundingList.do")
    public String fundingList() {
        return "crowdFunding/funding";
    }

    @RequestMapping(value = "/fundingRead.do")
    public ModelAndView getFundingDetail(ModelAndView mv) {
        mv.setViewName("/crowdFunding/fundingDetail");
        return mv;
    }

}
