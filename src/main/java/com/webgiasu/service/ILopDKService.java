package com.webgiasu.service;

import com.webgiasu.dto.LopDKDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ILopDKService {
	LopDKDTO saveph(LopDKDTO ttlop);
	LopDKDTO savesv(LopDKDTO ttlop);
	List<LopDKDTO> findAllPH(Pageable pageable);
	List<LopDKDTO> findAllSV(Pageable pageable);
	int getTotalItemPH();
	int getTotalItemSV();
	LopDKDTO findClassPHById(long id);
	LopDKDTO findClassSVById(long id);

//	List<LopDKDTO> findAllClassPHByIdNguoiTao(Long id);
//	List<LopDKDTO> findAllClassSVByIdNguoiTao(Long id);
}
