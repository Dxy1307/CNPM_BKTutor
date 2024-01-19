package com.webgiasu.controller.web;

import com.webgiasu.dto.LopDTO;
import com.webgiasu.service.ILopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class ListClassController {

    @Autowired
    private ILopService lopService;

    @GetMapping("/gia-su-tuyen-sinh")
    public ModelAndView showClassGS(@RequestParam("page") int page,
                             @RequestParam("limit") int limit) {
        ModelAndView mav = new ModelAndView("/web/listClassGS");
        LopDTO model = new LopDTO();
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setTotalItems(lopService.getTotalItemSV());
        model.setTotalPages((int) Math.ceil((double) model.getTotalItems() / model.getLimit()));
        List<LopDTO> listStr = lopService.findAllSV(pageable);
        for (LopDTO lopDTO : listStr) {
            String thoigian = lopDTO.getThoigian();
            List<String> thoigians = new ArrayList<>(Arrays.asList(thoigian.split(", ")));
            lopDTO.setThoigians(thoigians);
        }
        model.setListResult(listStr);
        mav.addObject("model", model);
        return mav;
    }

    @GetMapping("/tim-gia-su")
    public ModelAndView showClassPH(@RequestParam("page") int page,
                             @RequestParam("limit") int limit) {
        ModelAndView mav = new ModelAndView("web/listClassPH");
        LopDTO model = new LopDTO();
        model.setPage(page);
        model.setLimit(limit);
        Pageable pageable = new PageRequest(page - 1, limit);
        model.setTotalItems(lopService.getTotalItemPH());
        model.setTotalPages((int) Math.ceil((double) model.getTotalItems() / model.getLimit()));
        List<LopDTO> listStr = lopService.findAllPH(pageable);
        for (LopDTO lopDTO : listStr) {
            String thoigian = lopDTO.getThoigian();
            List<String> thoigians = new ArrayList<>(Arrays.asList(thoigian.split(", ")));
            lopDTO.setThoigians(thoigians);
        }
        model.setListResult(listStr);
        mav.addObject("model", model);
        return mav;
    }
}
