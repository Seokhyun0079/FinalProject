package com.music.tuna.chart.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/chart")
public class ChartController {
	
//	@Autowired
//	private ChartService chartService;
	
	@RequestMapping(value="/chartView.do")
	public String chartMain() {
		return "chart/chart"; // chart.jsp 리턴
	}

}
