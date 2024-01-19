package com.webgiasu.controller.admin;

import com.webgiasu.dto.LopDTO;
import com.webgiasu.service.ILopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DSLopController {

    @Autowired
    private ILopService lopService;

    @GetMapping("/quan-tri/lop-cua-phu-huynh/danh-sach")
    public ModelAndView showPH(@RequestParam("page") int page,
                               @RequestParam("limit") int limit,
                               @RequestParam("sortName") String sortName,
                               @RequestParam("sortBy") String sortBy) {
        ModelAndView mav = new ModelAndView("/admin/DSLop/DSLopPH");
        LopDTO lopDTO = new LopDTO();
        lopDTO.setPage(page);
        lopDTO.setLimit(limit);
        lopDTO.setSortName(sortName);
        lopDTO.setSortBy(sortBy);
        Pageable pageable = new PageRequest(page - 1, limit, Sort.Direction.fromString(sortBy), sortName);
        lopDTO.setListResult(lopService.findAllPH(pageable));
        lopDTO.setTotalItems(lopService.getTotalItemPH());
        lopDTO.setTotalPages((int) Math.ceil((double) lopDTO.getTotalItems() / lopDTO.getLimit()));
        mav.addObject("model", lopDTO);
        return mav;
    }

    @GetMapping("/quan-tri/lop-cua-phu-huynh/danh-sach/chi-tiet")
    public ModelAndView detailClassPH(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("/admin/DSLop/DSLopPHDetail");
        LopDTO lopDTO = lopService.findClassPHById(id);
        mav.addObject("model", lopDTO);
        return mav;
    }

    @GetMapping("/quan-tri/lop-cua-sinh-vien/danh-sach")
    public ModelAndView showSV(@RequestParam("page") int page,
                               @RequestParam("limit") int limit,
                               @RequestParam("sortName") String sortName,
                               @RequestParam("sortBy") String sortBy) {
        ModelAndView mav = new ModelAndView("/admin/DSLop/DSLopSV");
        LopDTO lopDTO = new LopDTO();
        lopDTO.setPage(page);
        lopDTO.setLimit(limit);
        lopDTO.setSortName(sortName);
        lopDTO.setSortBy(sortBy);
        Pageable pageable = new PageRequest(page - 1, limit, Sort.Direction.fromString(sortBy), sortName);
        lopDTO.setListResult(lopService.findAllSV(pageable));
        lopDTO.setTotalItems(lopService.getTotalItemSV());
        lopDTO.setTotalPages((int) Math.ceil((double) lopDTO.getTotalItems() / lopDTO.getLimit()));
        mav.addObject("model", lopDTO);
        return mav;
    }

    @GetMapping("/quan-tri/lop-cua-sinh-vien/danh-sach/chi-tiet")
    public ModelAndView detailClassSV(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("/admin/DSLop/DSLopSVDetail");
        LopDTO lopDTO = lopService.findClassSVById(id);
        mav.addObject("model", lopDTO);
        return mav;
    }
}
