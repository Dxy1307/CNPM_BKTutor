package com.webgiasu.service.impl;

import com.webgiasu.constant.SystemConstant;
import com.webgiasu.dto.MyUser;
import com.webgiasu.entity.RoleEntity;
import com.webgiasu.entity.UserEntity;
import com.webgiasu.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class CustomUserDetailsService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    // authentication
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserEntity userEntity = userRepository.findOneByUserNameAndStatus(username, SystemConstant.ACTIVE_STATUS);
        if (userEntity == null) {
            // khi fail nhảy vào authentication-failure-url của security.xml
            // thành công thì nhảy vào cái thành công ở trên cái cmt trên
            throw new UsernameNotFoundException("User not found");
        }
        List<GrantedAuthority> authorities = new ArrayList<>();
        // get được role do security đã làm, quan hệ many to many

        authorities.add(new SimpleGrantedAuthority(userEntity.getRole().getCode()));

//        for(RoleEntity role : userEntity.getRoles()) {
//            authorities.add(new SimpleGrantedAuthority(role.getCode())); thay đổi 1 chút
//        }
        // put thông tin vào trong security duy trì thông tin đó khi user login vào hệ thống
        // giống sessionUtil
        // user mặc định của security không có fullName nên tạo 1 class myUser extends User nhưng thêm fullName
        MyUser myUser = new MyUser(userEntity.getUserName(),userEntity.getPassword(),
                            true, true, true, true, authorities);
        myUser.setFullName(userEntity.getFullName());
        myUser.setEmail(userEntity.getEmail());
        myUser.setPhone(userEntity.getPhone());
        myUser.setId(userEntity.getId());
        myUser.setAvatar(userEntity.getAvatar());
        myUser.setRoleCode(userEntity.getRole().getCode());
        return myUser;
    }
}
