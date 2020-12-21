package com.css.repository.entity;

import lombok.ToString;
import org.hibernate.annotations.Where;

import javax.persistence.*;
import java.util.Objects;
@ToString
@Entity
@Table(name = "article_categories", schema = "hmrzj", catalog = "")
@Where(clause = "is_display=1")
public class ArticleCategoriesEntity {
    private int id;
    private String name;
    private String des;
    private Byte isDisplay;
    private Integer parentId;

    @Id
    @Column(name = "id", nullable = false)
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 100)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "des", nullable = true, length = 500)
    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    @Basic
    @Column(name = "is_display", nullable = true)
    public Byte getIsDisplay() {
        return isDisplay;
    }

    public void setIsDisplay(Byte isDisplay) {
        this.isDisplay = isDisplay;
    }

    @Basic
    @Column(name = "parent_id", nullable = true)
    public Integer getParentId() {
        return parentId;
    }

    public void setParentId(Integer parentId) {
        this.parentId = parentId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ArticleCategoriesEntity that = (ArticleCategoriesEntity) o;
        return id == that.id && Objects.equals(name, that.name) && Objects.equals(des, that.des) && Objects.equals(isDisplay, that.isDisplay) && Objects.equals(parentId, that.parentId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, name, des, isDisplay, parentId);
    }
}
