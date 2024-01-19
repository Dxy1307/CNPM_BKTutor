package com.webgiasu.repository;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.webgiasu.entity.LopSVEntity;

@Repository
public interface LopSVRepo extends JpaRepository<LopSVEntity,Long> {
	
}
