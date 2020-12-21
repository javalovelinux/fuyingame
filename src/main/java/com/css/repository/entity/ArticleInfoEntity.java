package com.css.repository.entity;

import lombok.ToString;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;
@ToString
@Entity
@Table(name = "article_info", schema = "hmrzj", catalog = "")
public class ArticleInfoEntity {
    private int id;
    private String author;
    private String title;
    private String excerpt;
    private Integer categoryId;
    private Timestamp publishTime;
    private byte isTop;
    private byte isPublished;
    private String imgUrl;
    private Timestamp createdDate;
    private int reply;
    private int browse;
    private String seoDes;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "author", nullable = true, length = 200)
    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Basic
    @Column(name = "title", nullable = false, length = 200)
    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    @Basic
    @Column(name = "excerpt", nullable = true, length = 5000)
    public String getExcerpt() {
        return excerpt;
    }

    public void setExcerpt(String excerpt) {
        this.excerpt = excerpt;
    }

    @Basic
    @Column(name = "category_id", nullable = true)
    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    @Basic
    @Column(name = "publish_time", nullable = false)
    public Timestamp getPublishTime() {
        return publishTime;
    }

    public void setPublishTime(Timestamp publishTime) {
        this.publishTime = publishTime;
    }

    @Basic
    @Column(name = "is_top", nullable = false)
    public byte getIsTop() {
        return isTop;
    }

    public void setIsTop(byte isTop) {
        this.isTop = isTop;
    }

    @Basic
    @Column(name = "is_published", nullable = false)
    public byte getIsPublished() {
        return isPublished;
    }

    public void setIsPublished(byte isPublished) {
        this.isPublished = isPublished;
    }

    @Basic
    @Column(name = "img_url", nullable = true, length = 400)
    public String getImgUrl() {
        return imgUrl;
    }

    public void setImgUrl(String imgUrl) {
        this.imgUrl = imgUrl;
    }

    @Basic
    @Column(name = "created_date", nullable = false)
    public Timestamp getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Timestamp createdDate) {
        this.createdDate = createdDate;
    }

    @Basic
    @Column(name = "reply", nullable = false)
    public int getReply() {
        return reply;
    }

    public void setReply(int reply) {
        this.reply = reply;
    }

    @Basic
    @Column(name = "browse", nullable = false)
    public int getBrowse() {
        return browse;
    }

    public void setBrowse(int browse) {
        this.browse = browse;
    }

    @Basic
    @Column(name = "seo_des", nullable = true, length = 500)
    public String getSeoDes() {
        return seoDes;
    }

    public void setSeoDes(String seoDes) {
        this.seoDes = seoDes;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ArticleInfoEntity that = (ArticleInfoEntity) o;
        return id == that.id && isTop == that.isTop && isPublished == that.isPublished && reply == that.reply && browse == that.browse && Objects.equals(author, that.author) && Objects.equals(title, that.title) && Objects.equals(excerpt, that.excerpt) && Objects.equals(categoryId, that.categoryId) && Objects.equals(publishTime, that.publishTime) && Objects.equals(imgUrl, that.imgUrl) && Objects.equals(createdDate, that.createdDate) && Objects.equals(seoDes, that.seoDes);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, author, title, excerpt, categoryId, publishTime, isTop, isPublished, imgUrl, createdDate, reply, browse, seoDes);
    }
}
