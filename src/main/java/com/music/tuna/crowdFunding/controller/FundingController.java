package com.music.tuna.crowdFunding.controller;

import com.music.tuna.crowdFunding.model.service.FundingService;
import com.music.tuna.crowdFunding.model.vo.Funding;
import com.music.tuna.member.model.vo.Member;
import com.music.tuna.payment.vo.Goods;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
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
    public ModelAndView getFundingDetail(ModelAndView mv, @RequestParam int fno) {
        Funding fvo = fundingService.selectFunding(fno);

        if(fvo.getFamount()!=0) {
            int percent = fvo.getFgoal() / fvo.getFamount();
            mv.addObject("percent", percent);
        }else {
            int percent = 0;
            mv.addObject("percent", percent);
        }
        long dDay = diffOfDate(fvo.getRegDate(), fvo.getEndDate());
        System.out.println("[fcontroller] d-day : "+dDay);
        mv.addObject("dDay", dDay);

        if(fvo!=null){
            mv.addObject("funding", fvo);
            mv.setViewName("crowdFunding/fundingDetail");
        }
        return mv;
    }

    @RequestMapping(value = "/insertReward.do")
    public String insertReward(){
        return "crowdFunding/reward_popup";
    }
    @RequestMapping(value = "/insertReward2.do", method = RequestMethod.POST)
    public void insertRewardPost(Goods gvo){
        System.out.println("[fcontroller] insertRewardPost : "+gvo.toString());
        int result = fundingService.insertReward(gvo);
        if(result>0){
            System.out.println("[fcontroller] insertReward Success!");
        }
    }

    @RequestMapping(value = "/insertFunding.do")
    public String insertFunding() {
        return "crowdFunding/fundingEnroll";
    }
    @RequestMapping(value = "/insertFunding.do", method = RequestMethod.POST)
    public String insertFContent(Funding fvo, HttpServletRequest request, @RequestParam(value = "fuploadFile") MultipartFile fuploadFile) {
        System.out.println("fvo = " + fvo);
        Funding fd = null;
        Goods gvo = fundingService.lastInsertedGoods();
        StringBuffer sb = new StringBuffer();

        HttpSession session = request.getSession();
        String userId = ((Member)session.getAttribute("loginUser")).getUserId();
        fvo.setId(userId);
        fvo.setRegDate(fvo.getEndDate());
        fvo.setFreward(gvo.getGoodsNo()+":"+gvo.getGoodsName());

        String filePath = "C:\\FinalProject\\src\\main\\webapp\\resources\\editor\\photoUpload\\";
        String oldName = fuploadFile.getOriginalFilename();

        if(!fuploadFile.isEmpty()){
            String saveName = sb.append(new SimpleDateFormat("yyyyMMddHHmmss")
                    .format(System.currentTimeMillis()))
                    .append(UUID.randomUUID().toString())
                    .append(oldName.substring(oldName.lastIndexOf("."))).toString();
            try{
                fuploadFile.transferTo(new File(filePath+"\\"+saveName));
                fvo.setFileName(saveName);

                System.out.println("funding image upload success");
            }catch (IOException e){
                new File(filePath+"\\"+saveName).delete();
                System.out.println("funding image upload failed");
                e.printStackTrace();
            }
        }else{
            System.out.println("file is empty!!");
        }

        fd = fundingService.insertFunding(fvo);

        System.out.println("[fcontroller] insertFContent : "+fd.toString());
        return "redirect:/crowdFunding/fundingRead.do?fno="+fd.getFno();
    }

    // 다중 파일 업로드
    @RequestMapping(value = "/file_uploader_html5.do", method = RequestMethod.POST)
    @ResponseBody
    public String multiplePhotoUpload(HttpServletRequest request) {
        // 파일 정보
        StringBuffer sb = new StringBuffer();
        try {
            // 파일명 받기
            String oldName = request.getHeader("file-name");

            // 파일 기본경로_상세경로
            String filePath = "C:\\FinalProject\\src\\main\\webapp\\resources\\editor\\photoUpload\\";
            String saveName = sb.append(new SimpleDateFormat("yyyyMMddHHmmss")
                                .format(System.currentTimeMillis()))
                                .append(UUID.randomUUID().toString())
                    .append(oldName.substring(oldName.lastIndexOf("."))).toString();

            InputStream is = request.getInputStream();
            OutputStream os = new FileOutputStream(filePath+saveName);

            int numRead;
            byte b[] = new byte[Integer.parseInt(request.getHeader("file-size"))];

            while((numRead = is.read(b, 0, b.length))!= -1) {
                os.write(b, 0, numRead);
            }
            os.flush();
            os.close();

            sb = new StringBuffer();
            sb.append("&bNewLine=true")
                    .append("&sFileName=").append(oldName)
                    .append("&sFileURL=").append("http://localhost:8989/TunaMusic/resources/editor/photoUpload/")
                    .append(saveName);

        }catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("[fundingController] : "+sb.toString());
        return sb.toString();
    }

    public static long diffOfDate(Date beginDate, Date endDate) {
        //SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        long diffDay = (endDate.getTime() - beginDate.getTime()) / (24*60*60*1000);

        System.out.println("[funding] d-day : "+diffDay+"일");
        return diffDay;
    }

}