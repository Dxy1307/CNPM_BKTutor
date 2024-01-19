package com.webgiasu.api.admin;

import com.webgiasu.dto.UserDTO;
import com.webgiasu.entity.NoticeEntity;
import com.webgiasu.entity.RoleEntity;
import com.webgiasu.entity.UserEntity;
import com.webgiasu.repository.NoticeRepo;
import com.webgiasu.repository.RoleReposiroty;
import com.webgiasu.repository.UserRepository;
import com.webgiasu.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TempTutorAPI {

    @Autowired
    private IUserService userService;

    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleReposiroty roleReposiroty;

    @Autowired
    private NoticeRepo noticeRepo;

    @PutMapping("/api/tutor/reject")
    public void updateTempToUser(@RequestBody long[] ids) {
        RoleEntity roleEntity = roleReposiroty.findOneByCode("USER");
        for (long id : ids) {
            UserEntity userEntity = userRepository.findOne(id);
            userEntity.setRole(roleEntity);
            userRepository.save(userEntity);
            NoticeEntity noticeEntity = new NoticeEntity();
            noticeEntity.setContent("Admin đã từ chối yêu cầu đăng ký làm gia sư của bạn");
            noticeEntity.setNhantb(userEntity);
            noticeRepo.save(noticeEntity);
        }
    }

    @PutMapping("/api/tutor/accept")
    public void updateTempToTutor(@RequestBody long[] ids) {
        RoleEntity roleEntity = roleReposiroty.findOneByCode("TUTOR");
        for (long id : ids) {
            UserEntity userEntity = userRepository.findOne(id);
            userEntity.setRole(roleEntity);
            userRepository.save(userEntity);
            NoticeEntity noticeEntity = new NoticeEntity();
            noticeEntity.setContent("Admin đã chấp nhận yêu cầu đăng ký làm gia sư của bạn");
            noticeEntity.setNhantb(userEntity);
            noticeRepo.save(noticeEntity);
        }
    }

    @PutMapping("/api/tutor/remove")
    public void updateTutorToUser(@RequestBody long[] ids) {
        RoleEntity roleEntity = roleReposiroty.findOneByCode("USER");
        for (long id : ids) {
            UserEntity userEntity = userRepository.findOne(id);
            userEntity.setRole(roleEntity);
            userRepository.save(userEntity);
        }
    }
}
