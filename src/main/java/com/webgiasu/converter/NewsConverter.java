package com.webgiasu.converter;

import com.webgiasu.dto.NewDTO;
import com.webgiasu.entity.NewsEntity;
import org.springframework.stereotype.Component;

@Component
public class NewsConverter {

    public NewDTO toDTO(NewsEntity entity) {
        NewDTO result = new NewDTO();
        result.setId(entity.getId());
        result.setTitle(entity.getTitle());
        result.setShortDescription(entity.getShortDescription());
        result.setContent(entity.getContent());
        result.setThumbnail(entity.getThumbnail());
        result.setCategoryCode(entity.getCategory().getCode());
        return result;
    }

    // từ dto -> entity, nếu thêm mới có thể không có id
    // trả về một newsEntity hoàn toàn mới
    public NewsEntity toEntity(NewDTO dto) {
        NewsEntity result = new NewsEntity();
        result.setTitle(dto.getTitle());
        result.setShortDescription(dto.getShortDescription());
        result.setContent(dto.getContent());
        result.setThumbnail(dto.getThumbnail());
        return result;
    }

    // trả về newsEntity dựa trên một newsEntity có sẵn, thiếu gì cập nhật đó
    public NewsEntity toEntity(NewsEntity result, NewDTO dto) {
        result.setTitle(dto.getTitle());
        result.setShortDescription(dto.getShortDescription());
        result.setContent(dto.getContent());
        result.setThumbnail(dto.getThumbnail());
        return result;
    }
}
