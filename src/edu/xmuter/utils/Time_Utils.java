package edu.xmuter.utils;

import java.sql.Date;
import java.sql.Time;
import java.sql.Timestamp;

public class Time_Utils {

    public static Long get_current_time_in_long() {
       return System.currentTimeMillis();
    }


    public static Timestamp get_date_timestamp() {
        long currentTimeMillis = System.currentTimeMillis();
        //方式2.
        Timestamp timestamp = new Timestamp(currentTimeMillis);
        return timestamp;
    }

    public static String get_date() {
        long currentTimeMillis = System.currentTimeMillis();
        Date date = new Date(currentTimeMillis);  //只有年月日  与MySQL中的DATE相对应
        Time time = new Time(currentTimeMillis);  //只有时分秒  与MySQL中的TIME相对应
        /*
         * 注意:  Java中与MySQL中的DATETIME(年月日 + 时分秒)相对应的是Timestamp,而不是DateTime
         * 		 下面这两种方式可以将当前的(年月日+时分秒)的时间对象存入到MySQL数据库
         */
        //方式1. 将date和time转换成字符串,然后进行拼接
        //		通过测试发现,中间必须要加一个空格
        String datetime = date.toString() + " " + time.toString();

        return datetime;
    }
}
