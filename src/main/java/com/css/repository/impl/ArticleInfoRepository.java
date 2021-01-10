package com.css.repository.impl;

import com.css.repository.BaseRepository;
import com.css.repository.entity.ArticleInfoEntity;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ArticleInfoRepository extends BaseRepository<ArticleInfoEntity,Long> {

    //根据作者名字查找视频信息
    List<ArticleInfoEntity> findByAuthor(String author);
    //根据标题查找视频信息
    List<ArticleInfoEntity> findByTitle(String title);
    //根据分类查找视频信息
    List<ArticleInfoEntity> findByCategoryId(int categoryId);
}
