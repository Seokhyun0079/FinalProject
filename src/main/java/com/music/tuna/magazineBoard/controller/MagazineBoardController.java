package com.music.tuna.magazineBoard.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.music.tuna.common.Pagination;
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
	 
	 PageInfo pi = Pagination.getPageInfo(currentPage, mlistCount);
	  ArrayList<MagazineBoard> list = mService.selectList(pi); //ArrayList vo
	  
	  if(list !=null) { // view로 보내야 할 것 : list, pi // 어떤 view로 보낼 건지
	  mv.addObject("list", list) 
	  .addObject("pi", pi)
	  .setViewName("magazineBoard/magazineListView");
	  
	  }

	  // return "magazineBoard/magazineListView"; 
	  
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
	 
	 




}
