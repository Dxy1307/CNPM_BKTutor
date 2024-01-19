package com.webgiasu.service.impl;

import com.webgiasu.converter.NewsConverter;
import com.webgiasu.dto.NewDTO;
import com.webgiasu.entity.CategoryEntity;
import com.webgiasu.entity.NewsEntity;
import com.webgiasu.repository.CategoryRepository;
import com.webgiasu.repository.NewsRepository;
import com.webgiasu.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

// service để thằng controller autowired được
@Service
public class NewService implements INewService {

	@Autowired
	private NewsRepository newsRepository;

	@Autowired
	private NewsConverter newsConverter;

	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public List<NewDTO> findAll(Pageable pageable) {
		List<NewDTO> models = new ArrayList<>();
		List<NewsEntity> entities = newsRepository.findAll(pageable).getContent();
		for (NewsEntity item : entities) {
			NewDTO newDTO = newsConverter.toDTO(item);
			models.add(newDTO);
		}
		return models;
	}

	@Override
	public int getTotalItem() {
		return (int) newsRepository.count();
	}

	@Override
	public NewDTO findById(long id) {
		NewsEntity entity = newsRepository.findOne(id);
		return newsConverter.toDTO(entity);
	}

	@Override
	@Transactional // quản lý transaction tự động
	public NewDTO save(NewDTO dto) {
		CategoryEntity categoryEntity = categoryRepository.findOneByCode(dto.getCategoryCode());
		NewsEntity newsEntity = new NewsEntity();
		if (dto.getId() != null) {
			NewsEntity oldNews = newsRepository.findOne(dto.getId());
			oldNews.setCategory(categoryEntity);
			newsEntity = newsConverter.toEntity(oldNews, dto);
		} else {
			newsEntity = newsConverter.toEntity(dto);
			newsEntity.setCategory(categoryEntity);
		}
		return newsConverter.toDTO(newsRepository.save(newsEntity));
	}

	@Override
	@Transactional
	public void delete(long[] ids) {
		for (long id : ids) {
			newsRepository.delete(id);
		}
	}

}