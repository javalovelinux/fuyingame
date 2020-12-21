package com.css.repository.entity;

import lombok.ToString;

import javax.persistence.*;
import java.util.Objects;
@ToString
@Entity
@Table(name = "sys_user_role", schema = "hmrzj", catalog = "")
public class SysUserRoleEntity {
    private String id;
    private String userId;
    private String roleId;

    @Id
    @Column(name = "id", nullable = false, length = 19)
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    @Basic
    @Column(name = "user_id", nullable = true, length = 19)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "role_id", nullable = true, length = 19)
    public String getRoleId() {
        return roleId;
    }

    public void setRoleId(String roleId) {
        this.roleId = roleId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SysUserRoleEntity that = (SysUserRoleEntity) o;
        return Objects.equals(id, that.id) && Objects.equals(userId, that.userId) && Objects.equals(roleId, that.roleId);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, userId, roleId);
    }
}
