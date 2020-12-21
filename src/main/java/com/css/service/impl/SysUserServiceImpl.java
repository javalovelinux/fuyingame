package com.css.service.impl;

import com.css.repository.entity.SysUserEntity;
import com.css.repository.impl.UserRepository;
import com.css.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SysUserServiceImpl implements SysUserService {
    @Autowired
    private UserRepository userRepository;
    @Override
    public SysUserEntity findByUserId(String userId) {
        return userRepository.findByUserId(userId);
    }
}
