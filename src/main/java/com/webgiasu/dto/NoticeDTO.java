package com.webgiasu.dto;

import java.util.Date;

public class NoticeDTO extends AbstractDTO<NoticeDTO>{
//	private Date createdDate;
	private String content;
	private Long nguoi_nhan;
	
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Long getNguoi_nhan() {
		return nguoi_nhan;
	}
	public void setNguoi_nhan(Long nguoi_nhan) {
		this.nguoi_nhan = nguoi_nhan;
	}
//	public Date getCreatedDate() {
//		return createdDate;
//	}
//	public void setCreatedDate(Date createdDate) {
//		this.createdDate = createdDate;
//	}
}
