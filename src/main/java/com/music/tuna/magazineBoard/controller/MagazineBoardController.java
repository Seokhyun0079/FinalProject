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

   
//    @RequestMapping(value="/magazine.do")
//      public String magazine() {
//         return "magazineBoard/magazineListView";
//      }
//      


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
	 



}
