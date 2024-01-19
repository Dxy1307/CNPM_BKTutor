package com.webgiasu.service;

import com.webgiasu.dto.LopDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface ILopService {
    List<LopDTO> findAllPH(Pageable pageable);
    List<LopDTO> findAllSV(Pageable pageable);
    int getTotalItemPH();
    int getTotalItemSV();
    LopDTO findClassPHById(long id);
    LopDTO findClassSVById(long id);
}
