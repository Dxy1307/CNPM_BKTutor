package com.webgiasu.converter;

import com.webgiasu.dto.UserDTO;
import com.webgiasu.entity.UserEntity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;

import java.sql.Date;
import java.sql.Timestamp;

@Component
public class UserConverter {

    @Autowired
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    public UserEntity toEntity(UserDTO userDTO) {
        UserEntity result = new UserEntity();
        result.setUserName(userDTO.getUserName());
        result.setPassword(bCryptPasswordEncoder.encode(userDTO.getPassword()));
        result.setFullName(userDTO.getFullName());
        result.setStatus(1);
        result.setEmail(userDTO.getEmail());
        result.setPhone(userDTO.getPhone());
        result.setAddress(userDTO.getAddress());
        result.setHometown(userDTO.getHometown());
        result.setBirthday(userDTO.getBirthday());
        result.setGender(userDTO.getGender());
        result.setAdvantage(userDTO.getAdvantage());
        result.setAvatar(userDTO.getAvatar());
        result.setSubject(userDTO.getSubject());

        result.setUniversity(userDTO.getUniversity());
        result.setMajor(userDTO.getMajor());
        result.setLevel(userDTO.getLevel());
        result.setTeachCity(userDTO.getTeachCity());
        result.setTeachDistrict(userDTO.getTeachDistrict());
        result.setIdCardFront(userDTO.getIdCardFront());
        result.setIdCardBack(userDTO.getIdCardBack());
        result.setStudentCard(userDTO.getStudentCard());
//        result.setDescribe(userDTO.getDescribe());
        return result;
    }

    public UserEntity toEntity(UserEntity result, UserDTO userDTO) {
        result.setFullName(userDTO.getFullName());
        result.setEmail(userDTO.getEmail());
        result.setPhone(userDTO.getPhone());
        result.setAddress(userDTO.getAddress());
        result.setHometown(userDTO.getHometown());
        result.setBirthday(userDTO.getBirthday());
        result.setGender(userDTO.getGender());
        result.setAdvantage(userDTO.getAdvantage());
        result.setAvatar(userDTO.getAvatar());
        result.setSubject(userDTO.getSubject());

        result.setUniversity(userDTO.getUniversity());
        result.setMajor(userDTO.getMajor());
        result.setLevel(userDTO.getLevel());
        result.setTeachCity(userDTO.getTeachCity());
        result.setTeachDistrict(userDTO.getTeachDistrict());
        result.setIdCardFront(userDTO.getIdCardFront());
        result.setIdCardBack(userDTO.getIdCardBack());
        result.setStudentCard(userDTO.getStudentCard());
//        result.setDescribe(userDTO.getDescribe());
        return result;
    }

    public UserDTO toDTO(UserEntity userEntity) {
        UserDTO result = new UserDTO();
        result.setId(userEntity.getId());
        result.setUserName(userEntity.getUserName());
        result.setPassword(userEntity.getPassword());
        result.setFullName(userEntity.getFullName());
        result.setStatus(userEntity.getStatus());
        result.setEmail(userEntity.getEmail());
        result.setPhone(userEntity.getPhone());
        result.setHometown(userEntity.getHometown());
        result.setAddress(userEntity.getAddress());
        result.setBirthday((Date) userEntity.getBirthday());
        result.setGender(userEntity.getGender());
        result.setAdvantage(userEntity.getAdvantage());
        result.setAvatar(userEntity.getAvatar());
        result.setSubject(userEntity.getSubject());
        result.setRoleCode(userEntity.getRole().getCode());

        result.setUniversity(userEntity.getUniversity());
        result.setMajor(userEntity.getMajor());
        result.setLevel(userEntity.getLevel());
        result.setTeachCity(userEntity.getTeachCity());
        result.setTeachDistrict(userEntity.getTeachDistrict());
        result.setIdCardFront(userEntity.getIdCardFront());
        result.setIdCardBack(userEntity.getIdCardBack());
        result.setStudentCard(userEntity.getStudentCard());
//        result.setDescribe(userEntity.getDescribe());
        return result;
    }
}
