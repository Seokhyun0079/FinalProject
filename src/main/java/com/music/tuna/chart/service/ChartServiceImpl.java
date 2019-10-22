package com.music.tuna.chart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.tuna.chart.dao.ChartDao;
import com.music.tuna.chart.vo.Chart;

@Service
public class ChartServiceImpl implements ChartService {
	
	@Autowired
	private ChartDao chartDao;
	
	@Override
	public Chart insertChart(Chart vo) {
		return null;
	}

	@Override
	public Chart updateChart(Chart vo) {
		return null;
	}

	@Override
	public Chart selectById(Chart vo) {
		return null;
	}

	@Override
	public List<Chart> selectRealTime() {
		return chartDao.selectRealTime();
	}
	
	

}
