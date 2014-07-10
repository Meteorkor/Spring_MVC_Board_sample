package com.meteor.bbs;

public class Default_bbs {
	
	int RowNo;
	
	int b_id;
	String b_title;
	String b_writor;
	String b_writed_date;
	int b_v_ctn;
	
	public Default_bbs(int b_id, String b_title, String b_writor,
			String b_writed_date, int b_v_ctn) {
		super();
		this.b_id = b_id;
		this.b_title = b_title;
		this.b_writor = b_writor;
		this.b_writed_date = b_writed_date;
		this.b_v_ctn = b_v_ctn;
	}

	public int getB_id() {
		return b_id;
	}

	public void setB_id(int b_id) {
		this.b_id = b_id;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_writor() {
		return b_writor;
	}

	public void setB_writor(String b_writor) {
		this.b_writor = b_writor;
	}

	public String getB_writed_date() {
		return b_writed_date;
	}

	public void setB_writed_date(String b_writed_date) {
		this.b_writed_date = b_writed_date;
	}

	public int getB_v_ctn() {
		return b_v_ctn;
	}

	public void setB_v_ctn(int b_v_ctn) {
		this.b_v_ctn = b_v_ctn;
	}

	public int getRowNo() {
		return RowNo;
	}

	public void setRowNo(int rowNo) {
		RowNo = rowNo;
	}
	
	
	

}
