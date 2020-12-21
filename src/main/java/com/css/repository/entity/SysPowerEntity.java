package com.css.repository.entity;

import lombok.ToString;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;
@ToString
@Entity
@Table(name = "sys_power", schema = "hmrzj", catalog = "")
public class SysPowerEntity {
    private String powerId;
    private String powerName;
    private String powerType;
    private String powerCode;
    private String powerUrl;
    private String openType;
    private String parentId;
    private String icon;
    private Integer sort;
    private String createBy;
    private Timestamp createTime;
    private String updateBy;
    private Timestamp updateTime;
    private String remark;
    private String enable;

    @Id
    @Column(name = "power_id", nullable = false, length = 19)
    public String getPowerId() {
        return powerId;
    }

    public void setPowerId(String powerId) {
        this.powerId = powerId;
    }

    @Basic
    @Column(name = "power_name", nullable = true, length = 255)
    public String getPowerName() {
        return powerName;
    }

    public void setPowerName(String powerName) {
        this.powerName = powerName;
    }

    @Basic
    @Column(name = "power_type", nullable = true, length = 1)
    public String getPowerType() {
        return powerType;
    }

    public void setPowerType(String powerType) {
        this.powerType = powerType;
    }

    @Basic
    @Column(name = "power_code", nullable = true, length = 30)
    public String getPowerCode() {
        return powerCode;
    }

    public void setPowerCode(String powerCode) {
        this.powerCode = powerCode;
    }

    @Basic
    @Column(name = "power_url", nullable = true, length = 255)
    public String getPowerUrl() {
        return powerUrl;
    }

    public void setPowerUrl(String powerUrl) {
        this.powerUrl = powerUrl;
    }

    @Basic
    @Column(name = "open_type", nullable = true, length = 10)
    public String getOpenType() {
        return openType;
    }

    public void setOpenType(String openType) {
        this.openType = openType;
    }

    @Basic
    @Column(name = "parent_id", nullable = true, length = 19)
    public String getParentId() {
        return parentId;
    }

    public void setParentId(String parentId) {
        this.parentId = parentId;
    }

    @Basic
    @Column(name = "icon", nullable = true, length = 60)
    public String getIcon() {
        return icon;
    }

    public void setIcon(String icon) {
        this.icon = icon;
    }

    @Basic
    @Column(name = "sort", nullable = true)
    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    @Basic
    @Column(name = "create_by", nullable = true, length = 19)
    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
    }

    @Basic
    @Column(name = "create_time", nullable = true)
    public Timestamp getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Timestamp createTime) {
        this.createTime = createTime;
    }

    @Basic
    @Column(name = "update_by", nullable = true, length = 19)
    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
    }

    @Basic
    @Column(name = "update_time", nullable = true)
    public Timestamp getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Timestamp updateTime) {
        this.updateTime = updateTime;
    }

    @Basic
    @Column(name = "remark", nullable = true, length = 255)
    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Basic
    @Column(name = "enable", nullable = true, length = 1)
    public String getEnable() {
        return enable;
    }

    public void setEnable(String enable) {
        this.enable = enable;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SysPowerEntity that = (SysPowerEntity) o;
        return Objects.equals(powerId, that.powerId) && Objects.equals(powerName, that.powerName) && Objects.equals(powerType, that.powerType) && Objects.equals(powerCode, that.powerCode) && Objects.equals(powerUrl, that.powerUrl) && Objects.equals(openType, that.openType) && Objects.equals(parentId, that.parentId) && Objects.equals(icon, that.icon) && Objects.equals(sort, that.sort) && Objects.equals(createBy, that.createBy) && Objects.equals(createTime, that.createTime) && Objects.equals(updateBy, that.updateBy) && Objects.equals(updateTime, that.updateTime) && Objects.equals(remark, that.remark) && Objects.equals(enable, that.enable);
    }

    @Override
    public int hashCode() {
        return Objects.hash(powerId, powerName, powerType, powerCode, powerUrl, openType, parentId, icon, sort, createBy, createTime, updateBy, updateTime, remark, enable);
    }
}
