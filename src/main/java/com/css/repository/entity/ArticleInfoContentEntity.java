package com.css.repository.entity;

import lombok.ToString;

import javax.persistence.*;
import java.util.Objects;
@ToString
@Entity
@Table(name = "article_info_content", schema = "hmrzj", catalog = "")
public class ArticleInfoContentEntity {
    private int id;
    private int articleInfoId;
    private String content;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "article_info_id", nullable = false)
    public int getArticleInfoId() {
        return articleInfoId;
    }

    public void setArticleInfoId(int articleInfoId) {
        this.articleInfoId = articleInfoId;
    }

    @Basic
    @Column(name = "content", nullable = true, length = -1)
    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ArticleInfoContentEntity that = (ArticleInfoContentEntity) o;
        return id == that.id && articleInfoId == that.articleInfoId && Objects.equals(content, that.content);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, articleInfoId, content);
    }
}
