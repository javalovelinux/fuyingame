package com.css.repository.entity;

import lombok.ToString;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;
@ToString
@Entity
@Table(name = "sys_role", schema = "hmrzj", catalog = "")
public class SysRoleEntity {
    private String roleId;
    private String roleName;
    private String roleCode;
    private String enable;
    private Timestamp createTime;
    private String createBy;
    private Timestamp updateTime;
    private String updateBy;
    private String remark;
    private String details;
    private Integer sort;

    @Id
    @Column(name = "role_id", nullable = false, length = 19)
    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    @Basic
    @Column(name = "role_name", nullable = true, length = 255)
    public String getRoleName() {
        return roleName;
    }

    public void setRoleName(String roleName) {
        this.roleName = roleName;
    }

    @Basic
    @Column(name = "role_code", nullable = true, length = 255)
    public String getRoleCode() {
        return roleCode;
    }

    public void setRoleCode(String roleCode) {
        this.roleCode = roleCode;
    }

    @Basic
    @Column(name = "enable", nullable = true, length = 1)
    public String getEnable() {
        return enable;
    }

    public void setEnable(String enable) {
        this.enable = enable;
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
    @Column(name = "create_by", nullable = true, length = 19)
    public String getCreateBy() {
        return createBy;
    }

    public void setCreateBy(String createBy) {
        this.createBy = createBy;
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
    @Column(name = "update_by", nullable = true, length = 19)
    public String getUpdateBy() {
        return updateBy;
    }

    public void setUpdateBy(String updateBy) {
        this.updateBy = updateBy;
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
    @Column(name = "details", nullable = true, length = 255)
    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    @Basic
    @Column(name = "sort", nullable = true)
    public Integer getSort() {
        return sort;
    }

    public void setSort(Integer sort) {
        this.sort = sort;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SysRoleEntity that = (SysRoleEntity) o;
        return Objects.equals(roleId, that.roleId) && Objects.equals(roleName, that.roleName) && Objects.equals(roleCode, that.roleCode) && Objects.equals(enable, that.enable) && Objects.equals(createTime, that.createTime) && Objects.equals(createBy, that.createBy) && Objects.equals(updateTime, that.updateTime) && Objects.equals(updateBy, that.updateBy) && Objects.equals(remark, that.remark) && Objects.equals(details, that.details) && Objects.equals(sort, that.sort);
    }

    @Override
    public int hashCode() {
        return Objects.hash(roleId, roleName, roleCode, enable, createTime, createBy, updateTime, updateBy, remark, details, sort);
    }
}
