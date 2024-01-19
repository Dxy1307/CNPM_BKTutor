package com.webgiasu.repository;

import com.webgiasu.entity.NewsEntity;
import org.springframework.data.jpa.repository.JpaRepository;

// 2 tham số là entity và kiểu dữ liệu của khóa chính
// NewsRepository tương tự INewDAO
// JpaRepository tương tự GenericDAO
public interface NewsRepository extends JpaRepository<NewsEntity, Long> {

}
