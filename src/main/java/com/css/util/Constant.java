package com.css.util;

/**
 * 常用常量类
 */
public interface Constant {
    /** 服务器端500 */
    public static final Integer SC_INTERNAL_SERVER_ERROR_500 = 500;
    /**  返回成功状态码200 OK*/
    public static final Integer SC_OK_200 = 200;
    /** 删除标记 */
    public static final Integer DELETE = 1;
     /** 未删除标记 */
    public static final Integer NO_DELETE = 0;
    /** 未删除标记 */
    public static final Integer UN_DELETE = 0;
    /** 开启标记 */
    public static final  Integer OPEN = 1;
    /** 关闭标记 */
    public static final Integer CLOSE = 0;
    /** true字符串 */
    public static final String TRUE = "true";
    /** false字符串 */
    public static final String FALSE = "false";

    /**
     * 当前页
     */
    Integer ZH_CURPAGE = 1 ;
    /**
     * 每页显示条数
     */
    Integer ZH_PAGESIZE = 10 ;

    public static final String YMD = "yyyy-MM-dd";
    public static final String TIME_ZINE = "GMT+8";
    /**
     * 数据库模式名
     */
    public static final String SCHEMA_NAME = "ZHBG";
    /**
     * 草稿箱标志
     */
    public static final String DRAFT_YES = "1";
    public static final String DRAFT_NO = "0";
    /**
     * 公文是否办结标志
     */
    public static final String FINISH_YES = "1";
    public static final String FINISH_NO = "0";
}
