package com.music.tuna.chart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.music.tuna.chart.service.ChartService;
import com.music.tuna.chart.vo.Chart;

@Controller
@RequestMapping("/chart")
public class ChartController {
	
	@Autowired
	private ChartService chartService;
	
//	@RequestMapping(value="/chartView.do")
//	public String chartMain() {
//		return "chart/chart"; // chart.jsp 리턴
//	}
	
	@RequestMapping(value="/chartView.do")
	public ModelAndView getRealTime(ModelAndView mv, Chart chart) {
		chart.setChartMax(10);
		mv.setViewName("chart/chart");
		mv.addObject("articleList", chartService.selectRealTime(chart));
		
		return mv;
	}
	
	@RequestMapping(value="/chartOne.do")
	public void getChartOne() {
		
	}
	
}
