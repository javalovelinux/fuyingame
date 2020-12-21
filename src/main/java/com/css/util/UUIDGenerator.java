package com.css.util;

import java.util.UUID;

/**
 * @ClassName UuidGenerator
 * @Description TODO
 * @Author wangnuo
 * @Date 2020/9/10 14:43
 * @Mail wangnuo@css.com.cn
 * @Version 1.0
 **/
public class UUIDGenerator {
    public UUIDGenerator() {
    }

    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }
}
