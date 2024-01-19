package com.webgiasu.controller.web;

import com.webgiasu.dto.LopDKDTO;
import com.webgiasu.dto.UserDTO;
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
public class RegisterClassController {

    @Autowired
    private IUserService userService;

    @GetMapping("/phu-huynh-tao-lop")
    public ModelAndView showClassPH(@RequestParam(value = "Id_Nguoitao") Long id) {
        ModelAndView mav = new ModelAndView("/web/PHRegisterClass");
        LopDKDTO lopDKDTO = new LopDKDTO();
        lopDKDTO.setId_Nguoitao(id);
        UserDTO userDTO = userService.findById(id);
        String thoigian = lopDKDTO.getThoigian();
        if (thoigian != null) {
            List<String> thoigians = new ArrayList<>(Arrays.asList(thoigian.split(", ")));
            lopDKDTO.setThoigians(thoigians);
        } else {
            List<String> thoigians = new ArrayList<>();
            lopDKDTO.setThoigians(thoigians);
        }
        mav.addObject("model", lopDKDTO);
        mav.addObject("user", userDTO);
        return mav;
    }

    @GetMapping("/sinh-vien-tao-lop")
    public ModelAndView showClassSV(@RequestParam(value = "Id_Nguoitao") Long id) {
        ModelAndView mav = new ModelAndView("/web/SVRegisterClass");
        LopDKDTO lopDKDTO = new LopDKDTO();
        lopDKDTO.setId_Nguoitao(id);
        UserDTO userDTO = userService.findById(id);
        String thoigian = lopDKDTO.getThoigian();
        if (thoigian != null) {
            List<String> thoigians = new ArrayList<>(Arrays.asList(thoigian.split(", ")));
            lopDKDTO.setThoigians(thoigians);
        } else {
            List<String> thoigians = new ArrayList<>();
            lopDKDTO.setThoigians(thoigians);
        }
        mav.addObject("model", lopDKDTO);
        mav.addObject("user", userDTO);
        return mav;
    }
}
