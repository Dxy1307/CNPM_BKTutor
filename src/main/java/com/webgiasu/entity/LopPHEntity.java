package com.webgiasu.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "lopph")
public class LopPHEntity  {
	
	@Id
	private Long id;

	@Column(name = "createdby", columnDefinition = "VARCHAR(50) ")
	private String createdBy;
	@Column(name = "createddate")
	private Date createdDate;
	@Column(name = "modifiedby", columnDefinition = "VARCHAR(50) ")
	private String modifiedBy;
	@Column(name = "modifieddate")
	private Date modifiedDate;
	
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
	private Boolean  status;
	
	@ManyToOne
	@JoinColumn(name = "nguoi_nhan_lop")
	private UserEntity ReciveSV;

	public UserEntity getReciveSV() {
		return ReciveSV;
	}

	public void setReciveSV(UserEntity reciveSV) {
		ReciveSV = reciveSV;
	}

	@ManyToOne
	@JoinColumn(name = "ph")
	private UserEntity PH;
	
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public String getModifiedBy() {
		return modifiedBy;
	}

	public void setModifiedBy(String modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	public Date getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(Date modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public UserEntity getPH() {
		return PH;
	}

	public void setPH(UserEntity pH) {
		PH = pH;
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
