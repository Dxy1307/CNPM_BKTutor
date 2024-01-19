package com.webgiasu.api.web;

import com.webgiasu.converter.UserConverter;
import com.webgiasu.dto.UserDTO;
import com.webgiasu.entity.UserEntity;
import com.webgiasu.repository.UserRepository;
import com.webgiasu.service.IUserService;
import com.webgiasu.util.FileUploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

@RestController
public class UpdateInforAPI {

    @Autowired
    private IUserService userService;

    @PostMapping("/api/cap-nhat-thong-tin")
    public UserDTO updateInforPost(@RequestBody UserDTO userDTO) {
        return userService.update(userDTO);
    }

    @PutMapping("/api/cap-nhat-thong-tin")
    public UserDTO updateInforPut(@RequestBody UserDTO userDTO) {
        return userService.update(userDTO);
    }
}
