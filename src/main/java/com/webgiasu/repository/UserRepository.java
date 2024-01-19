package com.webgiasu.repository;

import com.webgiasu.entity.RoleEntity;
import com.webgiasu.entity.UserEntity;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<UserEntity, Long> {
    // thay thế cho findByUserNameAndPasswordAndStatus trong file UserDAO servlet
    UserEntity findOneByUserNameAndStatus(String name, int status);

    UserEntity findOneByEmail(String email);
    UserEntity findOneByPhone(String phone);

    List<UserEntity> findAllByRole(Pageable pageable, RoleEntity roleEntity);
    List<UserEntity> findAllByRole(RoleEntity roleEntity);

    long countByRole(RoleEntity role);
}
