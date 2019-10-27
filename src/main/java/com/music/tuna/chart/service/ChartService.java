package com.music.tuna.chart.service;

import java.util.List;

import com.music.tuna.chart.vo.Chart;

public interface ChartService {
	
	public Chart insertChart(Chart vo);
	public Chart updateChart(Chart vo);
	public Chart selectById(Chart vo);
	public List<Chart> selectRealTime(Chart chart);

}
