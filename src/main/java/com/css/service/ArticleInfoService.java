package com.css.service;

import com.css.repository.entity.ArticleInfoEntity;

import java.util.List;

public interface ArticleInfoService {
    //根据作者名字查找视频信息
    List<ArticleInfoEntity> findByAuthor(String author);
    //根据标题查找视频信息
    List<ArticleInfoEntity> findByTitle(String title);
    //根据分类查找视频信息
    List<ArticleInfoEntity> findByCategoryId(int categoryId);
}
