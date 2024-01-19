package com.webgiasu.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "lopdkph")
public class LopDKPHEntity extends BaseEntity {
	
	@Column(name = "trinh_do")
	private String trinhdo;

	@Column(name = "mon_day")
	private String monday;

	@Column(name = "hinh_thuc")
	private String hinhthuc;

	@Column(name = "dia_diem")
	private String diadiem;

	@Column(name = "thoi_gian")
	private String thoigian;

	@Column(name = "muc_luong")
	private String mucluong;

	@Column(name = "tt_khac")
	private String ttkhac;

	@Column(name = "status", columnDefinition = "BIT ")
	private Boolean status;
	
	@ManyToOne
	@JoinColumn(name = "phdk")
	private UserEntity PHDK;

	public UserEntity getPHDK() {
		return PHDK;
	}

	public void setPHDK(UserEntity pHDK) {
		PHDK = pHDK;
	}

	public String getTrinhdo() {
		return trinhdo;
	}

	public void setTrinhdo(String trinhdo) {
		this.trinhdo = trinhdo;
	}

	public String getMonday() {
		return monday;
	}

	public void setMonday(String monday) {
		this.monday = monday;
	}

	public String getHinhthuc() {
		return hinhthuc;
	}

	public void setHinhthuc(String hinhthuc) {
		this.hinhthuc = hinhthuc;
	}

	public String getDiadiem() {
		return diadiem;
	}

	public void setDiadiem(String diadiem) {
		this.diadiem = diadiem;
	}

	public String getThoigian() {
		return thoigian;
	}

	public void setThoigian(String thoigian) {
		this.thoigian = thoigian;
	}

	public String getMucluong() {
		return mucluong;
	}

	public void setMucluong(String mucluong) {
		this.mucluong = mucluong;
	}

	public String getTtkhac() {
		return ttkhac;
	}

	public void setTtkhac(String ttkhac) {
		this.ttkhac = ttkhac;
	}

	public Boolean getStatus() {
		return status;
	}

	public void setStatus(Boolean status) {
		this.status = status;
	}

	
	

	
	
	
}
