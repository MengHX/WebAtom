package com.vcher.coffee.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * User: menghx
 * Date: 4/7/12
 * Time: 10:05 AM
 */
public class DateUtils {

    public static final String YYYYMMDDHHMMSSMS="yyyyMMddHHmmssms";

    public static String getCurrentDate(String dateFormat){
        SimpleDateFormat sf = new SimpleDateFormat(dateFormat);
        Date date = new Date();
        return sf.format(date);
    }

    public static void main(String[] args) {
        System.out.println(getCurrentDate(YYYYMMDDHHMMSSMS));
    }

}
