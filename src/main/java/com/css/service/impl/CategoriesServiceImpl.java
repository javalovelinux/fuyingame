package com.css.service.impl;

import com.css.repository.entity.ArticleCategoriesEntity;
import com.css.repository.impl.CategoriesRepository;
import com.css.service.CategoriesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoriesServiceImpl implements CategoriesService {
    @Autowired
    private CategoriesRepository categoriesRepository;
    @Override
    public ArticleCategoriesEntity findById(int id) {
        return categoriesRepository.findById(id);
    }

    @Override
    public List<ArticleCategoriesEntity> findAll() {
        return categoriesRepository.findAll();
    }
}
