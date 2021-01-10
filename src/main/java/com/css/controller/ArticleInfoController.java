package com.css.controller;

import com.alibaba.fastjson.JSONObject;
import com.css.repository.entity.ArticleInfoEntity;
import com.css.service.ArticleInfoService;
import com.css.util.Constant;
import com.css.util.Result;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@Api(value = "文章")
@RestController
@RequestMapping("/articleinfo")
public class ArticleInfoController {
    @Autowired
    private ArticleInfoService articleInfoService;

    //根据作者名字查找视频信息
    @ApiOperation(value = "根据作者名字查找视频信息")
    @RequestMapping(value = "/author")
    Result findByAuthor(@RequestParam("author") String author){
        Result result = new Result();
        JSONObject datas = new JSONObject();
        try {
            List<ArticleInfoEntity> articles = articleInfoService.findByAuthor(author);
            datas.put("articles",articles);
            result.setData(datas);
            result.setMsg("根据作者名字查找视频信息成功");
            result.setCode(Constant.SC_OK_200);
        }catch (Exception e){
            log.error(e.getMessage());
            result.setData(datas);
            result.setMsg("根据作者名字查找视频信息失败");
            result.setCode(Constant.SC_INTERNAL_SERVER_ERROR_500);
        }
        return result;
    }

    @ApiOperation(value = "根据标题查找视频信息")
    @RequestMapping(value = "/title")
    Result findByTitle(@RequestParam("title") String title){
        Result result = new Result();
        JSONObject datas = new JSONObject();
        try {
            List<ArticleInfoEntity> articles = articleInfoService.findByTitle(title);
            datas.put("articles",articles);
            result.setData(datas);
            result.setMsg("根据标题查找视频信息成功");
            result.setCode(Constant.SC_OK_200);
        }catch (Exception e){
            log.error(e.getMessage());
            result.setData(datas);
            result.setMsg("根据标题查找视频信息失败");
            result.setCode(Constant.SC_INTERNAL_SERVER_ERROR_500);
        }
        return result;
    }

    @ApiOperation(value = "根据分类查找视频信息")
    @RequestMapping(value = "/category")
    Result findByCategoryId(@RequestParam("categoryId") int categoryId){
        Result result = new Result();
        JSONObject datas = new JSONObject();
        try {
            List<ArticleInfoEntity> articles = articleInfoService.findByCategoryId(categoryId);
            datas.put("articles",articles);
            result.setData(datas);
            result.setMsg("根据分类查找视频信息成功");
            result.setCode(Constant.SC_OK_200);
        }catch (Exception e){
            log.error(e.getMessage());
            result.setData(datas);
            result.setMsg("根据分类查找视频信息失败");
            result.setCode(Constant.SC_INTERNAL_SERVER_ERROR_500);
        }
        return result;
    }

}
