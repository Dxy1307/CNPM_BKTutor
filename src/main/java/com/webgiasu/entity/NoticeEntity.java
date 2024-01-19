package com.webgiasu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "notice")
public class NoticeEntity extends BaseEntity {
	
	@Column(name = "content")
	private String content;
	
	@ManyToOne
	@JoinColumn(name="nguoi_nhan_tb")
	private UserEntity nhantb;

	public UserEntity getNhantb() {
		return nhantb;
	}

	public void setNhantb(UserEntity nhantb) {
		this.nhantb = nhantb;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}


	}
	

