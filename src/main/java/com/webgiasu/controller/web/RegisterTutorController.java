package com.webgiasu.controller.web;

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
public class RegisterTutorController {

    @Autowired
    private IUserService userService;

    @GetMapping("/dang-ky-gia-su")
    public ModelAndView show(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("web/registerTutor");
        UserDTO userDTO = new UserDTO();
        userDTO = userService.findById(id);
        String level = userDTO.getLevel();
        if(level != null) {
            List<String> levels = new ArrayList<>(Arrays.asList(level.split(", ")));
            userDTO.setLevels(levels);
        } else {
            List<String> levels = new ArrayList<>();
            userDTO.setLevels(levels);
        }
        mav.addObject("model", userDTO);
        return mav;
    }
}
