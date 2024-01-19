package com.webgiasu.api.web;

import com.webgiasu.dto.UserDTO;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RegisterAPI {

    @Autowired
    private IUserService userService;

    @PostMapping("/api/dang-ky")
    public UserDTO submitForm(@RequestBody UserDTO userDTO) throws Exception {
         return userService.save(userDTO);
    }
}
