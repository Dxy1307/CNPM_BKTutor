package com.webgiasu.repository;

import com.webgiasu.entity.RoleEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleReposiroty extends JpaRepository<RoleEntity, Long> {
    RoleEntity findOneByCode(String code);
}
