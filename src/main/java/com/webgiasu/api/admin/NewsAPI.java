package com.webgiasu.api.admin;

import com.webgiasu.dto.NewDTO;
import com.webgiasu.service.INewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController(value = "newsAPIOfAdmin")
public class NewsAPI {

    @Autowired
    private INewService newService;

    @PostMapping("/api/news")
    public NewDTO createNews(@RequestBody NewDTO newDTO) {
        return newService.save(newDTO);
    }

    @PutMapping("/api/news")
    public NewDTO updateNews(@RequestBody NewDTO updateNews) {
        return newService.save(updateNews);
    }

    @DeleteMapping("/api/news")
    public void deleteNews(@RequestBody long[] ids) {
        newService.delete(ids);
    }
}
