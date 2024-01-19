package com.webgiasu.converter;

import org.springframework.stereotype.Component;

import com.webgiasu.dto.LopDKDTO;
import com.webgiasu.entity.LopDKPHEntity;
import com.webgiasu.entity.LopDKSVEntity;

import java.sql.Timestamp;

@Component
public class LopdktoLopDKDTO{
    public LopDKSVEntity toEntity(LopDKDTO x) {
        LopDKSVEntity tem = new LopDKSVEntity();
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

    public LopDKDTO toDTO(LopDKSVEntity x) {
        LopDKDTO tem=new LopDKDTO();
        //convert
//        tem.setCreatedDate((Timestamp) x.getCreatedDate());
        tem.setDiadiem(x.getDiadiem());
        tem.setHinhthuc(x.getHinhthuc());
        tem.setId(x.getId());
        tem.setId_Nguoitao(x.getSVDK().getId());
        tem.setMonday(x.getMonday());
        tem.setMucluong(x.getMucluong());
        tem.setStatus(x.getStatus());
        tem.setThoigian(x.getThoigian());
        tem.setTrinhdo(x.getTrinhdo());
        tem.setTtkhac(x.getTtkhac());
        return tem;
    }
    public LopDKDTO toDTO(LopDKPHEntity x) {
        LopDKDTO tem=new LopDKDTO();
        //convert
//        tem.setCreatedDate((Timestamp) x.getCreatedDate());
        tem.setDiadiem(x.getDiadiem());
        tem.setHinhthuc(x.getHinhthuc());
        tem.setId(x.getId());
        tem.setId_Nguoitao(x.getPHDK().getId());
        tem.setMonday(x.getMonday());
        tem.setMucluong(x.getMucluong());
        tem.setStatus(x.getStatus());
        tem.setThoigian(x.getThoigian());
        tem.setTrinhdo(x.getTrinhdo());
        tem.setTtkhac(x.getTtkhac());
        return tem;
    }
}