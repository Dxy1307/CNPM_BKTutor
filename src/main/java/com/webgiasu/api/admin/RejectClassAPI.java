package com.webgiasu.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.webgiasu.dto.NoticeDTO;
import com.webgiasu.service.impl.ThemXoaLopAdmin;

@RestController
public class RejectClassAPI {
	
	@Autowired
	private ThemXoaLopAdmin themXoaLopAdmin;

	@PostMapping("/api/tu-choi-tao-lop-sv")
	public void tuchoitaolopsv(@RequestBody long[] ids) {
		for (long id : ids) {
			themXoaLopAdmin.xoalopsv_bangtam(id);
		}
	}
	
	@PostMapping("/api/tu-choi-tao-lop-ph")
	public void tuchoitaolopph(@RequestBody long[] ids) {
		for (long id : ids) {
			themXoaLopAdmin.xoalopph_bangtam(id);
		}
	}
}
