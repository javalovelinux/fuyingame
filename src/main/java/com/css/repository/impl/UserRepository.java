package com.css.repository.impl;

import com.css.repository.BaseRepository;
import com.css.repository.entity.SysUserEntity;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends BaseRepository<SysUserEntity,Long> {
    SysUserEntity findByUserId(String userId);
}
