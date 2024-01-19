package com.webgiasu.controller.admin;

import com.webgiasu.converter.LopdktoLopDKDTO;
import com.webgiasu.dto.LopDKDTO;
import com.webgiasu.repository.LopDKPHRepo;
import com.webgiasu.service.ILopDKService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class DSLopDKController {

    @Autowired
    private ILopDKService lopDKService;

    @Autowired
    private LopDKPHRepo lopDKPHRepo;

    @Autowired
    private LopdktoLopDKDTO lopdktoLopDKDTO;

    @GetMapping("/quan-tri/phu-huynh-dang-ky-lop/dang-sach")
    public ModelAndView show(@RequestParam("page") int page,
                             @RequestParam("limit") int limit,
                             @RequestParam("sortName") String sortName,
                             @RequestParam("sortBy") String sortBy,
                             HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("/admin/DSLopDK/DSLopDKPH");
        LopDKDTO lopDKDTO = new LopDKDTO();
        lopDKDTO.setPage(page);
        lopDKDTO.setLimit(limit);
        lopDKDTO.setSortName(sortName);
        lopDKDTO.setSortBy(sortBy);
        Pageable pageable = new PageRequest(page - 1, limit, Sort.Direction.fromString(sortBy), sortName);
        lopDKDTO.setListResult(lopDKService.findAllPH(pageable));
        lopDKDTO.setTotalItems(lopDKService.getTotalItemPH());
        lopDKDTO.setTotalPages((int) Math.ceil((double) lopDKDTO.getTotalItems() / lopDKDTO.getLimit()));
        mav.addObject("model", lopDKDTO);
        return mav;
    }

    @GetMapping("/quan-tri/phu-huynh-dang-ky-lop/dang-sach/chi-tiet")
    public ModelAndView detailClassRegisterByPH(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("/admin/DSLopDK/DSLopDKPHDetail");
        LopDKDTO lopDKDTO = lopDKService.findClassPHById(id);
        mav.addObject("model", lopDKDTO);
        return mav;
    }

    @GetMapping("/quan-tri/sinh-vien-dang-ky-lop/danh-sach")
    public ModelAndView show2(@RequestParam("page") int page,
                              @RequestParam("limit") int limit,
                              @RequestParam("sortName") String sortName,
                              @RequestParam("sortBy") String sortBy,
                              HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("/admin/DSLopDK/DSLopDKSV");
        LopDKDTO lopDKDTO = new LopDKDTO();
        lopDKDTO.setPage(page);
        lopDKDTO.setLimit(limit);
        lopDKDTO.setSortName(sortName);
        lopDKDTO.setSortBy(sortBy);
        Pageable pageable = new PageRequest(page - 1, limit, Sort.Direction.fromString(sortBy), sortName);
        lopDKDTO.setListResult(lopDKService.findAllSV(pageable));
        lopDKDTO.setTotalItems(lopDKService.getTotalItemSV());
        lopDKDTO.setTotalPages((int) Math.ceil((double) lopDKDTO.getTotalItems() / lopDKDTO.getLimit()));
        mav.addObject("model", lopDKDTO);
        return mav;
    }

    @GetMapping("/quan-tri/sinh-vien-dang-ky-lop/danh-sach/chi-tiet")
    public ModelAndView detailClassRegisterBySV(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("/admin/DSLopDK/DSLopDKSVDetail");
        LopDKDTO lopDKDTO = lopDKService.findClassSVById(id);
        mav.addObject("model", lopDKDTO);
        return mav;
    }
}
