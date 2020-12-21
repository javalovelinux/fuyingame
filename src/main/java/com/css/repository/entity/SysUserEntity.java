package com.css.repository.entity;

import lombok.ToString;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;
@ToString
@Entity
@Table(name = "sys_user", schema = "hmrzj", catalog = "")
public class SysUserEntity {
    private String userId;
    private String username;
    private String password;
    private String salt;
    private String status;
    private String realName;
    private String email;
    private String avatar;
    private String sex;
    private String phone;
    private Timestamp createTime;
    private String createBy;
    private Timestamp updateTime;
    private String updateBy;
    private String remark;
    private String enable;
    private String login;
    private String deptId;
    private Timestamp lastTime;

    @Id
    @Column(name = "user_id", nullable = false, length = 19)
    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "username", nullable = true, length = 20)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password", nullable = true, length = 60)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "salt", nullable = true, length = 10)
    public String getSalt() {
        return salt;
    }

    public void setSalt(String salt) {
        this.salt = salt;
    }

    @Basic
    @Column(name = "status", nullable = true, length = 1)
    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Basic
    @Column(name = "real_name", nullable = true, length = 8)
    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    @Basic
    @Column(name = "email", nullable = true, length = 20)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "avatar", nullable = true, length = 30)
    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    @Basic
    @Column(name = "sex", nullable = true, length = 1)
    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    @Basic
    @Column(name = "phone", nullable = true, length = 11)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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
    @Column(name = "create_by", nullable = true, length = 1)
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
    @Column(name = "update_by", nullable = true, length = 1)
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
    @Column(name = "enable", nullable = true, length = 1)
    public String getEnable() {
        return enable;
    }

    public void setEnable(String enable) {
        this.enable = enable;
    }

    @Basic
    @Column(name = "login", nullable = true, length = 1)
    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    @Basic
    @Column(name = "dept_id", nullable = true, length = 19)
    public String getDeptId() {
        return deptId;
    }

    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }

    @Basic
    @Column(name = "last_time", nullable = true)
    public Timestamp getLastTime() {
        return lastTime;
    }

    public void setLastTime(Timestamp lastTime) {
        this.lastTime = lastTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        SysUserEntity that = (SysUserEntity) o;
        return Objects.equals(userId, that.userId) && Objects.equals(username, that.username) && Objects.equals(password, that.password) && Objects.equals(salt, that.salt) && Objects.equals(status, that.status) && Objects.equals(realName, that.realName) && Objects.equals(email, that.email) && Objects.equals(avatar, that.avatar) && Objects.equals(sex, that.sex) && Objects.equals(phone, that.phone) && Objects.equals(createTime, that.createTime) && Objects.equals(createBy, that.createBy) && Objects.equals(updateTime, that.updateTime) && Objects.equals(updateBy, that.updateBy) && Objects.equals(remark, that.remark) && Objects.equals(enable, that.enable) && Objects.equals(login, that.login) && Objects.equals(deptId, that.deptId) && Objects.equals(lastTime, that.lastTime);
    }

    @Override
    public int hashCode() {
        return Objects.hash(userId, username, password, salt, status, realName, email, avatar, sex, phone, createTime, createBy, updateTime, updateBy, remark, enable, login, deptId, lastTime);
    }
}
