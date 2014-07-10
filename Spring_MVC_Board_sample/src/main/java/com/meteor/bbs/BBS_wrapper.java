package com.meteor.bbs;

import java.util.List;

public class BBS_wrapper {

	List<Default_bbs> b_list;

	int PageTotal;// 현재 전체 Page 수
	int PageSize;// 출력 Row 수
	int RowTotal;// 전체 Row 수

	int now_page;//현재 페이지
	
	public List<Default_bbs> getB_list() {
		return b_list;
	}

	public void setB_list(List<Default_bbs> b_list) {
		this.b_list = b_list;
	}

	public int getPageTotal() {
		return PageTotal;
	}

	public void setPageTotal(int pageTotal) {
		PageTotal = pageTotal;
	}

	public int getPageSize() {
		return PageSize;
	}

	public void setPageSize(int pageSize) {
		PageSize = pageSize;
	}

	public int getRowTotal() {
		return RowTotal;
	}

	public void setRowTotal(int rowTotal) {
		RowTotal = rowTotal;
	}

	public int getNow_page() {
		return now_page;
	}

	public void setNow_page(int now_page) {
		this.now_page = now_page;
	}

	
	
}
