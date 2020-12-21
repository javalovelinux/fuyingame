package com.css.service;

import com.css.repository.entity.SysUserEntity;

public interface SysUserService {

    SysUserEntity findByUserId(String userId);

}
