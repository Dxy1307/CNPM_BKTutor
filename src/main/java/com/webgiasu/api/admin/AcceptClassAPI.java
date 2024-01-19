package com.webgiasu.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.webgiasu.service.impl.ThemXoaLopAdmin;


@RestController
public class AcceptClassAPI {
	
	@Autowired 
	private ThemXoaLopAdmin themXoaLopAdmin;

	
	@PostMapping("/api/accept-luu-lop-sv")
	public void luulopsv(@RequestBody long[] ids) {
		for (long id : ids) {
			themXoaLopAdmin.savelopsv(id);
		}
	}

	@PostMapping("/api/accept-luu-lop-ph")
	public void luulopph(@RequestBody long[] ids) {
		for (long id : ids) {
			themXoaLopAdmin.savelopph(id);
		}
	}
}
