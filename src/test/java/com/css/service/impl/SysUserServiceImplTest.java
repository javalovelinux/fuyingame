package com.css.service.impl;

import com.css.service.SysUserService;
import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class SysUserServiceImplTest extends TestCase {
    @Autowired
    private SysUserService sysUserService;
    @Test
    public void findByUserId(){
        System.out.println(sysUserService.findByUserId("1309861917694623744"));
    }
}
