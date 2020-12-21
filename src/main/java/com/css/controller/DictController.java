package com.css.controller;

import com.css.repository.entity.ArticleCategoriesEntity;
import com.css.service.CategoriesService;
import com.css.util.Constant;
import com.css.util.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/dict")
public class DictController {
    @Autowired
    private CategoriesService categoriesService;
    @RequestMapping(value = "/article/category")
    public Result category(){
        List<ArticleCategoriesEntity> articleCategoriesEntityList = categoriesService.findAll();
        Result result = new Result();
        result.setCode(Constant.SC_OK_200);
        result.setMsg(Constant.TRUE);
        result.setData(articleCategoriesEntityList);
        return result;
    }

}
