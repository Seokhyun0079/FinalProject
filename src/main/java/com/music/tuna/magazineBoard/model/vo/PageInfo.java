package com.music.tuna.magazineBoard.model.vo;

public class PageInfo {
	
	 private int currentPage;
	   private int mlistCount;
	   private int pageLimit;
	   private int maxPage;
	   private int startPage;
	   private int endPage;

	   private int boardLimit;

	   public PageInfo() {

	   }

	   public PageInfo(int currentPage, int mlistCount, int pageLimit, int maxPage, int startPage, int endPage,
	         int boardLimit) {
	      super();
	      this.currentPage = currentPage;
	      this.mlistCount = mlistCount;
	      this.pageLimit = pageLimit;
	      this.maxPage = maxPage;
	      this.startPage = startPage;
	      this.endPage = endPage;
	      this.boardLimit = boardLimit;
	   }

	   public int getCurrentPage() {
	      return currentPage;
	   }

	   public void setCurrentPage(int currentPage) {
	      this.currentPage = currentPage;
	   }

	   public int getListCount() {
	      return mlistCount;
	   }

	   public void setListCount(int listCount) {
	      this.mlistCount = listCount;
	   }

	   public int getPageLimit() {
	      return pageLimit;
	   }

	   public void setPageLimit(int pageLimit) {
	      this.pageLimit = pageLimit;
	   }

	   public int getMaxPage() {
	      return maxPage;
	   }

	   public void setMaxPage(int maxPage) {
	      this.maxPage = maxPage;
	   }

	   public int getStartPage() {
	      return startPage;
	   }

	   public void setStartPage(int startPage) {
	      this.startPage = startPage;
	   }

	   public int getEndPage() {
	      return endPage;
	   }

	   public void setEndPage(int endPage) {
	      this.endPage = endPage;
	   }

	   public int getBoardLimit() {
	      return boardLimit;
	   }

	   public void setBoardLimit(int boardLimit) {
	      this.boardLimit = boardLimit;
	   }

	   @Override
	   public String toString() {
	      return "PageInfo [currentPage=" + currentPage + ", mlistCount=" + mlistCount + ", pageLimit=" + pageLimit
	            + ", maxPage=" + maxPage + ", startPage=" + startPage + ", endPage=" + endPage + ", boardLimit="
	            + boardLimit + "]";
	   }
	}