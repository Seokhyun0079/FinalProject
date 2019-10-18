package com.music.tuna.chart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.music.tuna.chart.service.ChartService;

@Controller
@RequestMapping("/chart")
public class ChartController {
	
//	@Autowired
//	private ChartService chartService;
	
	// 리턴 값은 같으나 매개변수 있을 때 없을 때로 구분하여 10개, 100개
	
	@RequestMapping(value="/chartView.do")
	public String chartMain() {
		return "chart/chart"; // chart.jsp 리턴
	}
	
	@RequestMapping(value="/chartViewMore.do")
	public String chartViewMore() {
		return "chart/chart";
	}
	

}
