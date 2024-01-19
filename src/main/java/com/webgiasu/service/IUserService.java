package com.webgiasu.service;

import com.webgiasu.dto.RoleDTO;
import com.webgiasu.dto.UserDTO;
import org.springframework.data.domain.Pageable;

import java.util.List;

public interface IUserService {
    UserDTO save(UserDTO userDTO) throws Exception;
    UserDTO update(UserDTO userDTO);
    List<String> findAllEmail();
    List<String> findAllPhone();

    List<UserDTO> findAllByRole(Pageable pageable, String role);
    List<UserDTO> findAllTutor();
    int getTotalItem();
    int getTotalItemByRole(String role);

    UserDTO findById(long id);
    void delete(long[] ids);
}
