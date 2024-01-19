package com.webgiasu.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.webgiasu.dto.NoticeDTO;
import com.webgiasu.entity.LopDKPHEntity;
import com.webgiasu.entity.LopDKSVEntity;
import com.webgiasu.entity.LopPHEntity;
import com.webgiasu.entity.LopSVEntity;
import com.webgiasu.entity.NoticeEntity;
import com.webgiasu.entity.UserEntity;
import com.webgiasu.repository.LopDKPHRepo;
import com.webgiasu.repository.LopDKSVRepo;
import com.webgiasu.repository.LopPHRepo;
import com.webgiasu.repository.LopSVRepo;
import com.webgiasu.repository.NoticeRepo;
import com.webgiasu.service.Ithem_xoa_lopAdmin;

import java.sql.Timestamp;

@Service
public class ThemXoaLopAdmin implements Ithem_xoa_lopAdmin {
	

	@Autowired
	private LopDKPHRepo dkphrepo;
	
	@Autowired
	private LopDKSVRepo dksvrepo;
	
	@Autowired
	private LopPHRepo lopphrepo;
	
	@Autowired
	private LopSVRepo  lopsvrepo;
	
	@Autowired
	private NoticeRepo  noticerepo;

	// lưu lớp sinh viên đăng kí
	@Override
	public void savelopsv(Long id_lop) {
		LopDKSVEntity lopdk=dksvrepo.findOne(id_lop);
		if(lopdk!=null) {
		LopSVEntity lop=new LopSVEntity();
		lop.setId(id_lop);
		lop.setDiadiem(lopdk.getDiadiem());
		lop.setHinhthuc(lopdk.getHinhthuc());
		lop.setMonday(lopdk.getMonday());
		lop.setMucluong(lopdk.getMucluong());
		lop.setThoigian(lopdk.getThoigian());
		lop.setTrinhdo(lopdk.getTrinhdo());
		lop.setTtkhac(lopdk.getTtkhac());
		lop.setStatus(true);
		lop.setCreatedDate(lopdk.getCreatedDate());
		lop.setSV(lopdk.getSVDK());
		
		lopsvrepo.save(lop);
		
		//xóa ở bảng tạm
		dksvrepo.delete(id_lop);
		
		// luu thong bao cho user
		NoticeEntity tb =new NoticeEntity();
//		tb.setContent("Bạn đã đăng kí thành công lớp dạy môn "+lopdk.getMonday()+" "+lopdk.getTrinhdo()+" với id = "+ Long.toString(id_lop));
		tb.setContent("Admin đã tạo lớp GS"+Long.toString(id_lop)+", dạy môn "+lopdk.getMonday()+" lớp "+lopdk.getTrinhdo()+" mà bạn đã gửi đăng ký vào ngày "+lopdk.getCreatedDate());
		tb.setNhantb(lopdk.getSVDK());
		noticerepo.save(tb);
		}
	}

	// lưu lớp phụ huynh đăng kí
	@Override
	public void savelopph(Long id_lop) {
		LopDKPHEntity lopdkph=dkphrepo.findOne(id_lop);
		if(lopdkph!=null) {
		LopPHEntity lop=new LopPHEntity();
		lop.setId(id_lop);
		lop.setDiadiem(lopdkph.getDiadiem());
		lop.setHinhthuc(lopdkph.getHinhthuc());
		lop.setMonday(lopdkph.getMonday());
		lop.setMucluong(lopdkph.getMucluong());
		lop.setThoigian(lopdkph.getThoigian());
		lop.setTrinhdo(lopdkph.getTrinhdo());
		lop.setTtkhac(lopdkph.getTtkhac());
		lop.setPH(lopdkph.getPHDK());
		lop.setStatus(true);
		lop.setCreatedDate(lopdkph.getCreatedDate());
		lopphrepo.save(lop);
		
		//xóa ở bảng tạm
		dkphrepo.delete(id_lop);
		
		// luu thong bao cho user
		NoticeEntity tb =new NoticeEntity();
//		tb.setContent("Bạn đã yêu cầu thành công lớp dạy môn "+lopdkph.getMonday()+" "+lopdkph.getTrinhdo()+" với id = "+ Long.toString(id_lop));
		tb.setContent("Admin đã tạo lớp ST"+Long.toString(id_lop)+", tìm gia sư dạy môn "+lopdkph.getMonday()+" lớp "+lopdkph.getTrinhdo()+" mà bạn đã gửi đăng ký vào ngày "+lopdkph.getCreatedDate());
		tb.setNhantb(lopdkph.getPHDK());
		noticerepo.save(tb);
		}
	}
	
	
	// xóa lớp sinh viên( Bảng chính)
	@Override
	public String xoalopsv(Long id_lop) {
		LopSVEntity lop=lopsvrepo.findOne(id_lop);
		if(lop!=null) {
			UserEntity user=lop.getSV();
			// thêm thông báo cho user 
			NoticeEntity notice=new NoticeEntity();
			notice.setNhantb(user);
			notice.setContent("Admin đã xóa lớp môn "+lop.getMonday()+" "+lop.getTrinhdo()+" id = "+Long.toString(id_lop));
			noticerepo.save(notice);
			
			lopsvrepo.delete(id_lop);
			return  "Đã xóa lop id= " +Long.toString(id_lop);	
			
		}else {
			return "Không có lớp sinh viên với id= " +Long.toString(id_lop);
		}
	}

	//xóa lớp phụ huynh( bảng chính)
	@Override
	public String xoalopph(Long id_lop) {
		LopPHEntity lop=lopphrepo.findOne(id_lop);
		if(lop!=null) {
			UserEntity user=lop.getPH();
			// thêm thông báo cho user 
			NoticeEntity notice=new NoticeEntity();
			notice.setNhantb(user);
			notice.setContent("Admin đã xóa lớp môn "+lop.getMonday()+" "+lop.getTrinhdo()+" id = "+Long.toString(id_lop));
			noticerepo.save(notice);
			
			lopphrepo.delete(id_lop);
			return  "Đã xóa lop id= " +Long.toString(id_lop);	
			
		}else {
			return "Không có lớp sinh viên với id= " +Long.toString(id_lop);
		}
	}
	
	
	// xóa lớp sv ở bảng phụ và đưa thông báo
	public void xoalopsv_bangtam(Long id_lop) {
		NoticeDTO dto = new NoticeDTO();
		LopDKSVEntity lopdksv=dksvrepo.findOne(id_lop);
		dksvrepo.delete(id_lop);
		
		// đưa thông báo
		NoticeEntity entity = new NoticeEntity();
		entity.setContent("Admin đã từ chối yêu cầu tạo lớp dạy môn "+lopdksv.getMonday()+" lớp "+lopdksv.getTrinhdo()+" của bạn");
		entity.setNhantb(lopdksv.getSVDK());
		noticerepo.save(entity);
		dto.setContent(entity.getContent());
//		dto.setCreatedDate((Timestamp) lopdksv.getCreatedDate());
		dto.setNguoi_nhan(lopdksv.getSVDK().getId());
//		return dto;
	}
	
	// xóa lớp ph ở bảng phụ và đưa thông báo
	public void xoalopph_bangtam(Long id_lop) {
		NoticeDTO dto=new NoticeDTO();
		LopDKPHEntity lopdkph=dkphrepo.findOne(id_lop); // lấy lớp đó lên từ bảng để in thông tin ra thông báo
		dkphrepo.delete(id_lop);
		
		// đưa ra thông báo
		NoticeEntity entity=new NoticeEntity();
		entity.setContent("Admin đã từ chối yêu cầu tạo lớp tìm gia sư môn "+lopdkph.getMonday()+" lớp "+lopdkph.getTrinhdo()+" của bạn");
		entity.setNhantb(lopdkph.getPHDK());
		noticerepo.save(entity);
		dto.setContent(entity.getContent());
//		dto.setCreatedDate((Timestamp) lopdkph.getCreatedDate());
		dto.setNguoi_nhan(lopdkph.getPHDK().getId());
//		return dto;
	}
	
}
