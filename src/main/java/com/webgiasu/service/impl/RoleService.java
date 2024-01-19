package com.webgiasu.service.impl;

import com.webgiasu.dto.RoleDTO;
import com.webgiasu.entity.RoleEntity;
import com.webgiasu.repository.RoleReposiroty;
import com.webgiasu.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class RoleService implements IRoleService {

    @Autowired
    private RoleReposiroty roleReposiroty;

    @Override
    public Map<String, String> findAll() {
        Map<String, String> result = new HashMap<>();
        List<RoleEntity> entities = roleReposiroty.findAll();
        for(RoleEntity item : entities) {
            result.put(item.getCode(), item.getName());
        }
        return result;
    }
}
