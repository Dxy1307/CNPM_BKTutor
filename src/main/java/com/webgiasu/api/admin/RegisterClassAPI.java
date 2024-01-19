package com.webgiasu.api.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.webgiasu.dto.LopDKDTO;
import com.webgiasu.service.impl.LopDKService;

@RestController
public class RegisterClassAPI {
	
	
	@Autowired
	private LopDKService lopDKService;
	
	@PostMapping("/api/ph-tao-lop")
    public LopDKDTO lphdk(@RequestBody LopDKDTO ttlop) {
	    return lopDKService.saveph(ttlop);
    }
	
	@PostMapping("/api/sv-tao-lop")
    public LopDKDTO lopsvdk(@RequestBody LopDKDTO ttlop) {
	    return lopDKService.savesv(ttlop);
    }
	
}
