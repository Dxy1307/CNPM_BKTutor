package com.webgiasu.service.impl;

import com.webgiasu.converter.LopdktoLopDKDTO;
import com.webgiasu.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webgiasu.dto.LopDKDTO;
import com.webgiasu.entity.LopDKPHEntity;
import com.webgiasu.entity.LopDKSVEntity;
import com.webgiasu.entity.UserEntity;
import com.webgiasu.repository.LopDKPHRepo;
import com.webgiasu.repository.LopDKSVRepo;
import com.webgiasu.service.ILopDKService;
import org.springframework.data.domain.Pageable;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;


@Service
public class LopDKService implements ILopDKService {
	
	@Autowired
	private LopDKPHRepo phrepo;
	
	@Autowired
	private UserRepository urepo;
	
	@Autowired
	private LopDKSVRepo svrepo;

	@Autowired
	private LopdktoLopDKDTO lopdktoLopDKDTO;

	@Override
	public LopDKDTO saveph(LopDKDTO ttlop) {  // trả về tt lóp nhưng chứa ID
		LopDKPHEntity phDkEntity =new LopDKPHEntity();
		phDkEntity.setHinhthuc(ttlop.getHinhthuc());;
		phDkEntity.setMonday(ttlop.getMonday());
		phDkEntity.setMucluong(ttlop.getMucluong());
		phDkEntity.setDiadiem(ttlop.getDiadiem());
		phDkEntity.setThoigian(ttlop.getThoigian());
		phDkEntity.setTrinhdo(ttlop.getTrinhdo());
		phDkEntity.setTtkhac(ttlop.getTtkhac());
		phDkEntity.setStatus(true);
		
		//lưu đối tượng người tạo
	    UserEntity nguoitao=urepo.findOne(ttlop.getId_Nguoitao());
		phDkEntity.setPHDK(nguoitao);
        //luu vào DB
//		phDkEntity=phrepo.save(phDkEntity);
//		ttlop.setId(phDkEntity.getId());
//		ttlop.setCreatedDate((Timestamp) phDkEntity.getCreatedDate());
		return lopdktoLopDKDTO.toDTO(phrepo.save(phDkEntity));
	}

	@Override
	public LopDKDTO savesv(LopDKDTO ttlop) {
		LopDKSVEntity svDkEntity =new LopDKSVEntity();
		svDkEntity.setHinhthuc(ttlop.getHinhthuc());;
		svDkEntity.setMonday(ttlop.getMonday());
		svDkEntity.setMucluong(ttlop.getMucluong());
		svDkEntity.setDiadiem(ttlop.getDiadiem());
		svDkEntity.setThoigian(ttlop.getThoigian());
		svDkEntity.setTrinhdo(ttlop.getTrinhdo());
		svDkEntity.setTtkhac(ttlop.getTtkhac());
		svDkEntity.setStatus(true);
		
		
	    UserEntity nguoitao=urepo.findOne(ttlop.getId_Nguoitao());
		svDkEntity.setSVDK(nguoitao);
    
//		svDkEntity=svrepo.save(svDkEntity);
//		ttlop.setId(svDkEntity.getId());
//		ttlop.setCreatedDate((Timestamp) svDkEntity.getCreatedDate());
		return lopdktoLopDKDTO.toDTO(svrepo.save(svDkEntity));
	}

	@Override
	public List<LopDKDTO> findAllPH(Pageable pageable) {
		List<LopDKDTO> models = new ArrayList<>();
		List<LopDKPHEntity> entities = phrepo.findAll(pageable).getContent();
		for (LopDKPHEntity entity : entities) {
			LopDKDTO lopDKDTO = lopdktoLopDKDTO.toDTO(entity);
			models.add(lopDKDTO);
		}
		return models;
	}

	@Override
	public List<LopDKDTO> findAllSV(Pageable pageable) {
		List<LopDKDTO> models = new ArrayList<>();
		List<LopDKSVEntity> entities = svrepo.findAll(pageable).getContent();
		for (LopDKSVEntity entity : entities) {
			LopDKDTO lopDKDTO = lopdktoLopDKDTO.toDTO(entity);
			models.add(lopDKDTO);
		}
		return models;
	}

	@Override
	public int getTotalItemPH() {
		return (int) phrepo.count();
	}

	@Override
	public int getTotalItemSV() {
		return (int) svrepo.count();
	}

	@Override
	public LopDKDTO findClassPHById(long id) {
		LopDKPHEntity entity = phrepo.findOne(id);
		return lopdktoLopDKDTO.toDTO(entity);
	}

	@Override
	public LopDKDTO findClassSVById(long id) {
		LopDKSVEntity entity = svrepo.findOne(id);
		return lopdktoLopDKDTO.toDTO(entity);
	}

//	@Override
//	public List<LopDKDTO> findAllClassPHByIdNguoiTao(Long id) {
//		UserEntity userEntity = urepo.findOne(id);
//		List<LopDKPHEntity> entities = phrepo.findAllByPHDK(userEntity);
//		List<LopDKDTO> model = new ArrayList<>();
//		for (LopDKPHEntity entity : entities) {
//			LopDKDTO lopDKDTO = lopdktoLopDKDTO.toDTO(entity);
//			model.add(lopDKDTO);
//		}
//		return model;
//	}
//
//	@Override
//	public List<LopDKDTO> findAllClassSVByIdNguoiTao(Long id) {
//		return null;
//	}

}
