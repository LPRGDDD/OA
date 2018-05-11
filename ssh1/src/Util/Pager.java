package Util;

import java.util.List;

public class Pager {
	private List list;//
	private int curPage;//
	private int pageSize;
	private int totalRecords;//
	private int totalPages;//
	private int firstPage;
	private int prevPage;//
	private int nextPage;//
	private int lastPage;//
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	public int getCurPage() {
		if(curPage<1){
			this.curPage=1;
		}
		return curPage;
	}
	public void setCurPage(int curPage) {	
			this.curPage = curPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getTotalRecords() {
		return totalRecords;
	}
	public void setTotalRecords(int totalRecords) {
		this.totalRecords = totalRecords;
	}
	public int getFirstPage() {
		return 1;
	}
	public int getPrevPage() {
		return getCurPage()<=1?1:getCurPage()-1;
	}
	public int getNextPage() {
		return getCurPage()>=getTotalPages()?getTotalPages():getCurPage()+1;
	}

	public int getLastPage() {
		return getTotalPages()==0?1:getTotalPages();
	}
	public int getTotalPages() {
		//100 10 =10
		return (getTotalRecords()+getPageSize()-1)/getPageSize();
	}
	public Pager(int curPage, int pageSize) {
		super();
		this.curPage = curPage;
		this.pageSize = pageSize;
	}
	public Pager() {
		super();
	}
	
	

}
