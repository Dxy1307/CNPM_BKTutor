package com.webgiasu.converter;

import org.springframework.stereotype.Component;

import com.webgiasu.dto.LopDTO;
import com.webgiasu.entity.LopPHEntity;
import com.webgiasu.entity.LopSVEntity;

import java.sql.Timestamp;

@Component
public class LoptoLopDTO{
    public LopSVEntity toEntity(LopDTO x) {
        LopSVEntity tem=new LopSVEntity();
        tem.setId(x.getId());
        tem.setCreatedDate(x.getCreatedDate());
        tem.setDiadiem(x.getDiadiem());
        tem.setHinhthuc(x.getHinhthuc());
        tem.setMonday(x.getMonday());
        tem.setMucluong(x.getMucluong());
        tem.setStatus(x.getStatus());
        tem.setThoigian(x.getThoigian());
        tem.setTrinhdo(x.getTrinhdo());
        tem.setTtkhac(x.getTtkhac());
        return tem;
    }

    public LopDTO toDTO(LopSVEntity x) {
        LopDTO tem=new LopDTO();
        //convert
        tem.setCreatedDate((Timestamp) x.getCreatedDate());
        tem.setDiadiem(x.getDiadiem());
        tem.setHinhthuc(x.getHinhthuc());
        tem.setId(x.getId());
        tem.setId_Nguoitao(x.getSV().getId());
//        tem.setId_Nguoinhan(x.getRecivePH().getId());
        tem.setMonday(x.getMonday());
        tem.setMucluong(x.getMucluong());
        tem.setStatus(x.getStatus());
        tem.setThoigian(x.getThoigian());
        tem.setTrinhdo(x.getTrinhdo());
        tem.setTtkhac(x.getTtkhac());
        return tem;
    }
    public LopDTO toDTO(LopPHEntity x) {
        LopDTO tem=new LopDTO();
        //convert
        tem.setCreatedDate((Timestamp) x.getCreatedDate());
        tem.setDiadiem(x.getDiadiem());
        tem.setHinhthuc(x.getHinhthuc());
        tem.setId(x.getId());
        tem.setId_Nguoitao(x.getPH().getId());
//		tem.setId_Nguoinhan(x.getReciveSV().getId());
        tem.setMonday(x.getMonday());
        tem.setMucluong(x.getMucluong());
        tem.setStatus(x.getStatus());
        tem.setThoigian(x.getThoigian());
        tem.setTrinhdo(x.getTrinhdo());
        tem.setTtkhac(x.getTtkhac());
        return tem;
    }
}
