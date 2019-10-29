package com.music.tuna.magazineBoard.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.music.tuna.magazineBoard.model.dao.MagazineBoardDAO;
import com.music.tuna.magazineBoard.model.vo.MagazineBoard;
import com.music.tuna.magazineBoard.model.vo.PageInfo;

@Service
public class MagazineBoardServiceImpl implements MagazineBoardService {

	@Autowired
	private MagazineBoardDAO mDAO;

	@Override
	public int getListCount() {
		return mDAO.getListCount();
	}

	@Override
	public ArrayList<MagazineBoard> selectList(PageInfo pi) {
		ArrayList<MagazineBoard> list = mDAO.selectList(pi);
		for(MagazineBoard maga : list) {
			int s =maga.getMcontent().indexOf("mphotoUpload");
			if(s!=-1) {
				String sub = maga.getMcontent().substring(s+"mphotoUpload".length(), maga.getMcontent().length());
				maga.setThumbnail(sub.substring(1, sub.indexOf("\"")));
			}
		}
		return list;
	}

	@Override
	public MagazineBoard selectboard(int mseq) {
		mDAO.addReadCount(mseq);
		mDAO.commit();
		MagazineBoard maga = mDAO.selectBoard(mseq);
		int s =maga.getMcontent().indexOf("mphotoUpload");
		if(s!=-1) {
			String sub = maga.getMcontent().substring(s+"mphotoUpload".length(), maga.getMcontent().length());
			maga.setThumbnail(sub.substring(1, sub.indexOf("\"")));
		}
		return maga;
	}

	@Override
	public int deletePost(int mseq) {
		int result = mDAO.deletePost(mseq);
		mDAO.commit();
		return result;
		
	}

	@Override
	public int keySearchCount(String keyword) {
		return mDAO.keySearchCount(keyword);
	}

	@Override
	public ArrayList<MagazineBoard> selectKeySearch(String keyword,PageInfo pi) {
		ArrayList<MagazineBoard> list = mDAO.selectKeySearch(keyword,pi);
		for(MagazineBoard maga : list) {
			int s =maga.getMcontent().indexOf("mphotoUpload");
			if(s!=-1) {
				String sub = maga.getMcontent().substring(s+"mphotoUpload".length(), maga.getMcontent().length());
				maga.setThumbnail(sub.substring(1, sub.indexOf("\"")));
			}
		}
		return list;
	}

	@Override
	public int insertPost(MagazineBoard m) {
		int result =mDAO.insertPost(m);
		mDAO.commit();
		return result;
	}

	@Override
	public int mupdate(MagazineBoard m) {
		int result =  mDAO.updatePost(m);
		mDAO.commit();
		return result;
	}











	
}
