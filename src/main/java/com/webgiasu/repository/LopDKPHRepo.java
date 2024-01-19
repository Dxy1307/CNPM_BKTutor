package com.webgiasu.repository;

import com.webgiasu.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.webgiasu.entity.LopDKPHEntity;

import java.util.List;

@Repository
public interface LopDKPHRepo extends JpaRepository<LopDKPHEntity,Long> {
//    List<LopDKPHEntity> findAllByPHDK(UserEntity userEntity);
}
