//package com.webgiasu.controller.web;
//
//import com.webgiasu.dto.LopDKDTO;
//import com.webgiasu.dto.UserDTO;
//import com.webgiasu.service.ILopDKService;
//import com.webgiasu.service.IUserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.servlet.ModelAndView;
//
//import java.util.List;
//
//@Controller
//public class StatusClassController {
//
//    @Autowired
//    private ILopDKService lopDKService;
//
//    @Autowired
//    private IUserService userService;
//
//    @GetMapping("/trang-thai-lop")
//    public ModelAndView show(@RequestParam(value = "Id_Nguoitao") Long id) {
//        ModelAndView mav = new ModelAndView("web/statusClass");
//        LopDKDTO lopDKDTO = new LopDKDTO();
//        List<LopDKDTO> lopDKDTOS = lopDKService.findAllClassPHByIdNguoiTao(id);
//        lopDKDTO.setListResult(lopDKDTOS);
//        UserDTO userDTO = userService.findById(id);
//        mav.addObject("model", lopDKDTO);
//        mav.addObject("user", userDTO);
//        return mav;
//    }
//}
