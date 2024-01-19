package com.webgiasu.repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.webgiasu.entity.NoticeEntity;


@Repository
public interface NoticeRepo extends JpaRepository<NoticeEntity,Long>{

	@Query(value="SELECT DISTINCT n.* FROM notice n WHERE n.nguoi_nhan_tb=?1 ORDER BY n.createdate DESC",nativeQuery=true)
	List<NoticeEntity> findallnotice(Long id_user);
}
