package com.webgiasu.api.web;

import com.webgiasu.converter.UserConverter;
import com.webgiasu.dto.UserDTO;
import com.webgiasu.entity.RoleEntity;
import com.webgiasu.entity.UserEntity;
import com.webgiasu.repository.RoleReposiroty;
import com.webgiasu.repository.UserRepository;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class RegisterTutorAPI {

    @Autowired
    private IUserService userService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private UserConverter userConverter;

    @Autowired
    private RoleReposiroty roleReposiroty;

    @PostMapping("/api/dang-ky-gia-su")
    public UserDTO registerTutor(@RequestBody UserDTO userDTO) {
        UserEntity oldUser = userRepository.findOne(userDTO.getId());
        oldUser.setSubject(userDTO.getSubject());
        oldUser.setUniversity(userDTO.getUniversity());
        oldUser.setMajor(userDTO.getMajor());
        oldUser.setLevel(userDTO.getLevel());
        oldUser.setTeachCity(userDTO.getTeachCity());
        oldUser.setTeachDistrict(userDTO.getTeachDistrict());
        if (userDTO.getIdCardFront() != null) {
            oldUser.setIdCardFront(userDTO.getIdCardFront());
        }
        if (userDTO.getIdCardBack() != null) {
            oldUser.setIdCardBack(userDTO.getIdCardBack());
        }
        if (userDTO.getStudentCard() != null) {
            oldUser.setStudentCard(userDTO.getStudentCard());
        }
        if (oldUser.getRole().getCode().equals("USER")) {
            RoleEntity roleEntity = roleReposiroty.findOneByCode("TEMP");
            oldUser.setRole(roleEntity);
        }
        oldUser = userRepository.save(oldUser);
        return userConverter.toDTO(oldUser);
    }
}
