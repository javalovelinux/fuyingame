package com.css.service.impl;

import com.css.repository.entity.ArticleInfoEntity;
import com.css.repository.impl.ArticleInfoRepository;
import com.css.service.ArticleInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ArticleInfoServiceImpl implements ArticleInfoService {
    @Autowired
    private ArticleInfoRepository articleInfoRepository;

    @Override
    public List<ArticleInfoEntity> findByAuthor(String author) {
        return articleInfoRepository.findByAuthor(author);
    }

    @Override
    public List<ArticleInfoEntity> findByTitle(String title) {
        return articleInfoRepository.findByTitle(title);
    }

    @Override
    public List<ArticleInfoEntity> findByCategoryId(int categoryId) {
        return articleInfoRepository.findByCategoryId(categoryId);
    }
}
