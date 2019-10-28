package com.music.tuna.chart.controller;

import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.music.tuna.chart.service.ChartService;
import com.music.tuna.chart.vo.Chart;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

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
	public void getChartOne(HttpServletResponse res) {
		Chart vo = new Chart();
		vo.setChartMax(1);
		JSONObject json = new JSONObject();
		json.put("result", chartService.selectRealTime(vo));
		res.setContentType("application/x-json; charset=utf-8");
		try{
			res.getWriter().print(json);
		}catch(IOException e ){
			e.printStackTrace();
		}
	}
	
}
