package com.webgiasu.controller.web;

import com.webgiasu.dto.UserDTO;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DetailTutorController {

    @Autowired
    private IUserService userService;

    @GetMapping("/chi-tiet-gia-su")
    public ModelAndView show(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("/web/detailTutor");
        UserDTO userDTO = userService.findById(id);
        mav.addObject("model", userDTO);
        return mav;
    }
}
