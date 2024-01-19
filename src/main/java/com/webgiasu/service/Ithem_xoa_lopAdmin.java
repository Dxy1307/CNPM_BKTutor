package com.webgiasu.service;

import com.webgiasu.dto.NoticeDTO;

public interface Ithem_xoa_lopAdmin {
	void savelopsv(Long id_lop);
	void savelopph(Long id_lop);
	String xoalopsv(Long id_lop);
	String xoalopph(Long id_lop);
	public void xoalopsv_bangtam(Long id_lop);
	public void xoalopph_bangtam(Long id_lop);
}
