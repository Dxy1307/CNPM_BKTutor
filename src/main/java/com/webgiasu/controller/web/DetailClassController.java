package com.webgiasu.controller.web;

import com.webgiasu.dto.LopDTO;
import com.webgiasu.dto.UserDTO;
import com.webgiasu.service.ILopService;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Controller
public class DetailClassController {

    @Autowired
    private ILopService lopService;

    @Autowired
    private IUserService userService;

    @GetMapping("/lop-hoc-gia-su")
    public ModelAndView detailClassGS(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("/web/detailClassGS");
        LopDTO lopDTO = lopService.findClassSVById(id);
        String thoigian = lopDTO.getThoigian();
        if (thoigian != null) {
            List<String> thoigians = new ArrayList<>(Arrays.asList(thoigian.split(", ")));
            lopDTO.setThoigians(thoigians);
        } else {
            List<String> thoigians = new ArrayList<>();
            lopDTO.setThoigians(thoigians);
        }
        UserDTO userDTO = userService.findById(lopDTO.getId_Nguoitao());
        mav.addObject("model", lopDTO);
        mav.addObject("user", userDTO);
        return mav;
    }

    @GetMapping("/lop-hoc-phu-huynh")
    public ModelAndView detailClassPH(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("/web/detailClassPH");
        LopDTO lopDTO = lopService.findClassPHById(id);
        String thoigian = lopDTO.getThoigian();
        if (thoigian != null) {
            List<String> thoigians = new ArrayList<>(Arrays.asList(thoigian.split(", ")));
            lopDTO.setThoigians(thoigians);
        } else {
            List<String> thoigians = new ArrayList<>();
            lopDTO.setThoigians(thoigians);
        }
//        UserDTO userDTO = userService.findById(lopDTO.getId_Nguoitao());
        mav.addObject("model", lopDTO);
//        mav.addObject("user", userDTO);
        return mav;
    }
}
