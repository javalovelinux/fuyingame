package com.css.service;

import com.css.repository.entity.ArticleCategoriesEntity;

import java.util.List;

public interface CategoriesService {
    ArticleCategoriesEntity findById(int id);

    List<ArticleCategoriesEntity> findAll();
}
