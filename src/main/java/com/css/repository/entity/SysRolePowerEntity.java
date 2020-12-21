package com.css.repository.entity;

import lombok.ToString;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;
@ToString
@Entity
@Table(name = "sys_role_power", schema = "hmrzj", catalog = "")
public class SysRolePowerEntity {
    private String id;
    private String roleId;
    private String powerId;
    private String createBy;
    private Timestamp createTime;
    private String updateBy;
    private Timestamp updateTime;
    private String remark;

    @Id
    @Column(name = "id", nullable = false, length = 19)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "role_id", nullable = true, length = 19)
    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    @Basic
    @Column(name = "power_id", nullable = true, length = 19)
    public String getPowerId() {
        return powerId;
    }

    public void setPowerId(String powerId) {
        this.powerId = powerId;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SysRolePowerEntity that = (SysRolePowerEntity) o;
        return Objects.equals(id, that.id) && Objects.equals(roleId, that.roleId) && Objects.equals(powerId, that.powerId) && Objects.equals(createBy, that.createBy) && Objects.equals(createTime, that.createTime) && Objects.equals(updateBy, that.updateBy) && Objects.equals(updateTime, that.updateTime) && Objects.equals(remark, that.remark);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, roleId, powerId, createBy, createTime, updateBy, updateTime, remark);
    }
}
