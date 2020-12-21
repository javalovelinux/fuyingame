package com.css.util;



import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 日期处理
 */
public class DateUtils {
	/** 时间格式(yyyy-MM-dd) */
	public final static String DATE_PATTERN = "yyyy-MM-dd";
	/** 时间格式(yyyy-MM-dd HH:mm:ss) */
	public final static String DATE_TIME_PATTERN = "yyyy-MM-dd HH:mm:ss";

    /**
     * 日期格式化 日期格式为：yyyy-MM-dd
     * @param date  日期
     * @return  返回yyyy-MM-dd格式日期
     */
	public static String format(Date date) {
        return format(date, DATE_PATTERN);
    }

    /**
     * 日期格式化 日期格式为：yyyy-MM-dd
     * @param date  日期
     * @param pattern  格式，如：DateUtils.DATE_TIME_PATTERN
     * @return  返回yyyy-MM-dd格式日期
     */
    public static String format(Date date, String pattern) {
        if(date != null){
            SimpleDateFormat df = new SimpleDateFormat(pattern);
            return df.format(date);
        }
        return null;
    }


    /**
     * 获取当前时间
     * @return 当前日期
     */
    public static Timestamp getNowTime() {
        SimpleDateFormat dateFormat = new SimpleDateFormat(DATE_TIME_PATTERN);
        Timestamp nowTime = Timestamp.valueOf(dateFormat.format(new Date()));
        return nowTime;
    }





    /**
     * 获取当前年
     * @return
     */
    public static String getCurrentYear(){
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy");
        Date date = new Date();
        String year = sdf.format(date);
        return year;
    };

    /**
     * 判断两个日期之间相差多少天
     * @return
     */
    public static int daysBetween(String smdate, String bdate)throws ParseException
    {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        cal.setTime(sdf.parse(smdate));
        long time1 = cal.getTimeInMillis();
        cal.setTime(sdf.parse(bdate));
        long time2 = cal.getTimeInMillis();
        long between_days = (time2 - time1) / 86400000L;

        return Math.abs(Integer.parseInt(String.valueOf(between_days)));
    }

    public static boolean isNotNull(String str) {
        return !isNull(str);
    }

    public static boolean isNotNull(Object ob) {
        if (ob != null) {
            return !isNull(ob.toString());
        }
        return false;
    }

    public static boolean isNull(String str) {
        return (str == null) || ("null".equals(str)) || (str.trim().length() == 0);
    }


    /**
     * 包含起始时间，到结束时间总共一周：7天
     * @param startTime
     * @return
     */
    public static Date addTime(Date startTime,int addNum){
        Calendar cal = Calendar.getInstance();
        cal.setTime(startTime);
        cal.add(Calendar.DATE,addNum);
        return cal.getTime();
    }
    /**
     *格式化日期函数
     */
    public static String formatDate(Date date){
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        return format.format(date);
    }

    /**
     * 将字符串日期转为日期对象
     */
    public static Date stringToDate(String dateStr) throws ParseException {
        return new SimpleDateFormat("yyyy-MM-dd").parse(dateStr);
    }
    /**
     * 计算日期对应星期几
     */
    public static int getDayNum(Date date){
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        return c.get(Calendar.DAY_OF_WEEK);
    }
}
