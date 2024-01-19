package com.webgiasu.service.impl;

import com.webgiasu.converter.LoptoLopDTO;
import com.webgiasu.dto.LopDTO;
import com.webgiasu.entity.LopPHEntity;
import com.webgiasu.entity.LopSVEntity;
import com.webgiasu.repository.LopPHRepo;
import com.webgiasu.repository.LopSVRepo;
import com.webgiasu.service.ILopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class LopService implements ILopService {

    @Autowired
    private LopPHRepo lopPHRepo;

    @Autowired
    private LopSVRepo lopSVRepo;

    @Autowired
    private LoptoLopDTO loptoLopDTO;

    @Override
    public List<LopDTO> findAllPH(Pageable pageable) {
        List<LopDTO> models = new ArrayList<>();
        List<LopPHEntity> entities = lopPHRepo.findAll(pageable).getContent();
        for (LopPHEntity entity : entities) {
            LopDTO lopDTO = loptoLopDTO.toDTO(entity);
            models.add(lopDTO);
        }
        return models;
    }

    @Override
    public List<LopDTO> findAllSV(Pageable pageable) {
        List<LopDTO> models = new ArrayList<>();
        List<LopSVEntity> entities = lopSVRepo.findAll(pageable).getContent();
        for (LopSVEntity entity : entities) {
            LopDTO lopDTO = loptoLopDTO.toDTO(entity);
            models.add(lopDTO);
        }
        return models;
    }

    @Override
    public int getTotalItemPH() {
        return (int) lopPHRepo.count();
    }

    @Override
    public int getTotalItemSV() {
        return (int) lopSVRepo.count();
    }

    @Override
    public LopDTO findClassPHById(long id) {
        LopPHEntity entity = lopPHRepo.findOne(id);
        return loptoLopDTO.toDTO(entity);
    }

    @Override
    public LopDTO findClassSVById(long id) {
        LopSVEntity entity = lopSVRepo.findOne(id);
        return loptoLopDTO.toDTO(entity);
    }
}
