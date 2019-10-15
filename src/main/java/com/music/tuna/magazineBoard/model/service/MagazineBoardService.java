package com.music.tuna.magazineBoard.model.service;


import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.music.tuna.magazineBoard.model.vo.MagazineBoard;
import com.music.tuna.magazineBoard.model.vo.PageInfo;

public interface MagazineBoardService {

	int getListCount();

	ArrayList<MagazineBoard> selectList(PageInfo pi);
	

	


}
