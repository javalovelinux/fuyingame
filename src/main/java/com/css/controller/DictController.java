package com.css.controller;

import com.css.repository.entity.ArticleCategoriesEntity;
import com.css.service.CategoriesService;
import com.css.util.Constant;
import com.css.util.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
@Api(value = "字典")
@RestController
@RequestMapping("/dict")
public class DictController {
    @Autowired
    private CategoriesService categoriesService;

    @ApiOperation(value = "获取视频所有分类信息")
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
