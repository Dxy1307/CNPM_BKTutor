package com.webgiasu.controller.web;

import com.google.gson.Gson;
import com.webgiasu.dto.UserDTO;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UpdateInforController {

    @Autowired
    private IUserService userService;

    @GetMapping("/cap-nhat-thong-tin-ca-nhan")
    public ModelAndView show(@RequestParam(value = "id") Long id) {
        ModelAndView mav = new ModelAndView("web/updateInfor");
        UserDTO userDTO = new UserDTO();
        userDTO = userService.findById(id);
        List<String> emailAll = userService.findAllEmail();
        List<String> phoneAll = userService.findAllPhone();
        Gson gson = new Gson();
        String emaildata = gson.toJson(emailAll);
        String phonedata = gson.toJson(phoneAll);
        mav.addObject("emaildata", emaildata);
        mav.addObject("phonedata", phonedata);
        mav.addObject("model", userDTO);
        return mav;
    }
}
