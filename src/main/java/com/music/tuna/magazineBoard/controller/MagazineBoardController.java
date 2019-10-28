package com.music.tuna.magazineBoard.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ProcessBuilder.Redirect;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.music.tuna.common.mPagination;
import com.music.tuna.magazineBoard.model.service.MagazineBoardService;
import com.music.tuna.magazineBoard.model.vo.MagazineBoard;
import com.music.tuna.magazineBoard.model.vo.PageInfo;


@Controller
public class MagazineBoardController {
   
   @Autowired
   private MagazineBoardService mService;


   //게시판 리스트 조회(총 갯수 출력, 페이징처리)
	 @RequestMapping("magazine.do") 
	 public ModelAndView mboardList(@RequestParam(value="page", required = false)Integer page,
	 ModelAndView mv) {
	  
	  int currentPage = 1; 
	  if(page != null) { currentPage = page; }
	 
	  int mlistCount = mService.getListCount();
	 
	 PageInfo pi = mPagination.getPageInfo(currentPage, mlistCount);
	  ArrayList<MagazineBoard> list = mService.selectList(pi); //ArrayList vo
	  
	  if(list !=null) { // view로 보내야 할 것 : list, pi // 어떤 view로 보낼 건지
	  mv.addObject("list", list) 
	  .addObject("pi", pi)
	  .setViewName("magazineBoard/magazineListView");
	  
	  }
	  
	  return mv;	  
	  }
	 
	 // 게시물 작성페이지로 이동
	 @RequestMapping("minsertView.do")
	 public String minsertForm() {
		return "magazineBoard/magazineInsertForm";
		 
	 }
	 
	 
	 // 게시물 상세(페이지)보기
	 @RequestMapping("mdetaile.do")
	 public ModelAndView mdetaile(@RequestParam("mseq") int mseq, @RequestParam("page") int page,
			 					ModelAndView mv) {
		
		 MagazineBoard m = mService.selectboard(mseq);
		 
		 if(m != null) {
			 mv.addObject("MagazineBoard", m)
			 	.addObject("page", page)
			 	.setViewName("magazineBoard/magazineDetailView");
		 }

		 return mv;
	 }
	 
	 // 게시물 삭제
	 @RequestMapping("mdelete.do")
	 public String mdelete(@RequestParam(value="mseq") int mseq) {
		
		 int result= mService.deletePost(mseq);
		 
		if(result >0){
			return "redirect:magazine.do"; 
			}
		else{
			return null; //에러 발생 
		  }

	 }

	 //게시물 검색(총 갯수 출력, 페이징처리)
	 @RequestMapping("msearch.do") 
	 public ModelAndView mboardList(@RequestParam(value="keyword")String keyword, @RequestParam(value="page", required = false)Integer page,
	 ModelAndView mv) {
	  
	  int currentPage = 1; 
	  if(page != null) { currentPage = page; }
	 
	  int mlistCount = mService.keySearchCount(keyword);
	 
	  PageInfo pi = mPagination.getPageInfo(currentPage, mlistCount);
	  ArrayList<MagazineBoard> list = mService.selectKeySearch(keyword,pi); //ArrayList vo
	  
	  if(list !=null) { // view로 보내야 할 것 : list, pi // 어떤 view로 보낼 건지
	  mv.addObject("list", list) 
	  .addObject("pi", pi)
	  .setViewName("magazineBoard/magazineListView");
	  
	  }
	  return mv;
	 
	 }
	 
	 //게시물 저장
	 @RequestMapping("minsert.do")
	 public String minsert(@ModelAttribute MagazineBoard m) {
		
		 System.out.println(m);
 
		 int result = mService.insertPost(m);
		 
		 if(result >0) {
			 return "redirect:magazine.do";
		 }else {
			 return null; //에러 발생
		 }
		 
	 }
	 

	 // 게시물 수정 view단으로 이동
	@RequestMapping("mupdate.do")
	public ModelAndView mupdate(@RequestParam(value="mseq")int mseq, @ModelAttribute("MagazineBoard") MagazineBoard m, ModelAndView mv) {
		
		MagazineBoard maga = mService.selectboard(mseq);
		mv.addObject("MagazineBoard", maga)
		  .setViewName("magazineBoard/magazineUpdate");
		
		return mv;

		 }
	
	//게시물 수정완료
	@RequestMapping("mupdateSuccess.do")
	public String mupdateSuccess(@ModelAttribute MagazineBoard m) {
		System.out.println(m);
		
		int result= mService.mupdate(m);
		 
		
		if(result >0){
			return "redirect:magazine.do"; }
		else{
			return null; //에러 발생 
		  }
		 
		/* return "redirect:magazine.do"; */
	
		 
	}
	
	
	 // 다중 파일 업로드			
    @RequestMapping(value = "/file_uploader_html5.do", method = RequestMethod.POST)
    @ResponseBody
    public String multiplePhotoUpload(HttpServletRequest request) {
        // 파일 정보
    	System.out.println("1");
        StringBuffer sb = new StringBuffer();
        try {
            // 파일명 받기
            String oldName = request.getHeader("file-name");

            // 파일 기본경로_상세경로
            String root = request.getSession().getServletContext().getRealPath("resources");
            String filePath = "C:\\FinalProject\\src\\main\\webapp\\resources\\editor\\mphotoUpload\\";
            
            
          
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
                    .append("&sFileURL=").append("http://localhost:8989/TunaMusic/resources/editor/mphotoUpload/")
                    .append(saveName);
            System.out.println("2");
        }catch (Exception e) {
            e.printStackTrace();
        }

    	System.out.println("");
        System.out.println("[MagazineController] : "+sb.toString());
        return sb.toString();
    }


	 

	 




}
