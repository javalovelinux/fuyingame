package com.css.repository.impl;

import com.css.repository.BaseRepository;
import com.css.repository.entity.ArticleCategoriesEntity;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface CategoriesRepository extends BaseRepository<ArticleCategoriesEntity,Long> {

    ArticleCategoriesEntity findById(int id);
    @Override
    List<ArticleCategoriesEntity> findAll();
}
