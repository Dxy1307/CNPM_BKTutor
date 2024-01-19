package com.webgiasu.service.impl;

import com.webgiasu.constant.SystemConstant;
import com.webgiasu.converter.NewsConverter;
import com.webgiasu.converter.UserConverter;
import com.webgiasu.dto.RoleDTO;
import com.webgiasu.dto.UserDTO;
import com.webgiasu.entity.RoleEntity;
import com.webgiasu.entity.UserEntity;
import com.webgiasu.repository.RoleReposiroty;
import com.webgiasu.repository.UserRepository;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import javax.swing.text.html.parser.Entity;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserService implements IUserService {

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleReposiroty roleReposiroty;

    @Autowired
    private UserConverter userConverter;

    @Override
    public UserDTO save(UserDTO userDTO) throws Exception {
        UserEntity userEntity = new UserEntity();
        RoleEntity roleEntity = roleReposiroty.findOneByCode(userDTO.getRoleCode());
        if (userRepository.findOneByUserNameAndStatus(userDTO.getUserName(), SystemConstant.ACTIVE_STATUS) != null
                || userRepository.findOneByEmail(userDTO.getEmail()) != null || userRepository.findOneByPhone(userDTO.getPhone()) != null) {
            throw new Exception("Tài khoản đã tồn tại");
        } else {
            userEntity = userConverter.toEntity(userDTO);
            userEntity.setRole(roleEntity);
        }
        return userConverter.toDTO(userRepository.save(userEntity));
    }

    @Override
    public UserDTO update(UserDTO userDTO) {
//        UserEntity userEntity = new UserEntity();
//        UserEntity oleUser = userRepository.findOne(userDTO.getId());
//        userEntity = userConverter.toEntity(oleUser, userDTO);
//        return userConverter.toDTO(userRepository.save(userEntity));

        UserEntity oldUser = userRepository.findOne(userDTO.getId());
        oldUser.setFullName(userDTO.getFullName());
        oldUser.setBirthday(userDTO.getBirthday());
        oldUser.setPhone(userDTO.getPhone());
        oldUser.setEmail(userDTO.getEmail());
        oldUser.setHometown(userDTO.getHometown());
        oldUser.setAddress(userDTO.getAddress());
        oldUser.setGender(userDTO.getGender());
        oldUser.setAdvantage(userDTO.getAdvantage());
        if (userDTO.getAvatar() != null) {
            oldUser.setAvatar(userDTO.getAvatar());
        }
        return userConverter.toDTO(userRepository.save(oldUser));
    }

    @Override
    public List<String> findAllEmail() {
        List<String> models = new ArrayList<>();
        List<UserEntity> entities = userRepository.findAll();
        for (UserEntity item : entities) {
            models.add(item.getEmail());
        }
        return models;
    }

    @Override
    public List<String> findAllPhone() {
        List<String> models = new ArrayList<>();
        List<UserEntity> entities = userRepository.findAll();
        for (UserEntity item : entities) {
            models.add(item.getPhone());
        }
        return models;
    }

    @Override
    public List<UserDTO> findAllByRole(Pageable pageable, String role) {
        List<UserDTO> models = new ArrayList<>();
        RoleEntity roleEntity = roleReposiroty.findOneByCode(role);
        List<UserEntity> entities = userRepository.findAllByRole(pageable, roleEntity);
        for (UserEntity item : entities) {
            UserDTO userDTO = userConverter.toDTO(item);
            models.add(userDTO);
        }
        return models;
    }

    @Override
    public List<UserDTO> findAllTutor() {
        List<UserDTO> models = new ArrayList<>();
        RoleEntity roleEntity = roleReposiroty.findOneByCode("TUTOR");
        List<UserEntity> entities = userRepository.findAllByRole(roleEntity);
        for (UserEntity entity : entities) {
            UserDTO userDTO = userConverter.toDTO(entity);
            models.add(userDTO);
        }
        return models;
    }

    @Override
    public int getTotalItem() {
        return (int) userRepository.count();
    }

    @Override
    public int getTotalItemByRole(String role) {
        RoleEntity roleEntity = roleReposiroty.findOneByCode(role);
        return (int) userRepository.countByRole(roleEntity);
    }

    @Override
    public UserDTO findById(long id) {
        UserEntity entity = userRepository.findOne(id);
        return userConverter.toDTO(entity);
    }

    @Override
    public void delete(long[] ids) {
        for (long id : ids) {
            userRepository.delete(id);
        }
    }
}
