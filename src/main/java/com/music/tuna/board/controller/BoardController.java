package com.music.tuna.board.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.music.tuna.board.model.service.BoardService;
import com.music.tuna.board.model.vo.Board;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bService;
	
	@RequestMapping("blist.do")
	public String getBoadList()	{
		return "communityBoard/boardListView";
		
	}
	
	//@RequestMapping("blist.me")
	public ModelAndView boardList(@RequestParam(value="page", required=false) Integer page,
							ModelAndView mv) {
		
		/*
		ArrayList<Board> list = bService.selectList(pi);
		
		if(list != null) {
			// view로 보내야 할 것 : list, pi
			// 어떤 view로 보낼 건지
			mv.addObject("list", list)
			  .addObject("pi", pi)
			  .setViewName("board/boardListView");
		}
		*/
		
//		return "board/boardListView";
		return mv;
	}

}
