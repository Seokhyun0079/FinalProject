package com.music.tuna.crowdFunding.controller;

import com.music.tuna.crowdFunding.model.service.FundingService;
import com.music.tuna.crowdFunding.model.vo.Funding;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.UUID;

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
    public String getFundingDetail() {
        //mv.setViewName("/crowdFunding/fundingDetail");
        return "crowdFunding/fundingDetail";
    }

    @RequestMapping(value = "/fundingWrite.do")
    public String insertFunding() {
        //mv.setViewName("/crowdFunding/fundingDetail");
        return "crowdFunding/fundingEnroll";
    }

}
