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

    @RequestMapping(value = "/insertFContent.do", method = RequestMethod.POST)
    public String insertFContent(String editor) {
        System.out.println("[nse] 저장할 내용 : "+editor);
        return "redirect:/crowdFunding/fundingEnroll";
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

}
