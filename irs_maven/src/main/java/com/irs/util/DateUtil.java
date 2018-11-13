package com.irs.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.log4j.Logger;

/**
 * ʱ�䴦����
 * @author Mr Du
 *
 */
public class DateUtil {
    private static Logger LOGGER = Logger.getLogger(DateUtil.class);

    /**
     * Format String : yyyy-MM-dd HH:mm:ss
     */
    public static final String DateFormat1 = "yyyy-MM-dd HH:mm:ss";

    /**
     * Format String : yyyy-MM-dd
     */
    public static final String DateFormat2 = "yyyy-MM-dd";

    /**
     * Format String : yyyyMMdd
     */
    public static final String DateFormat3 = "yyyyMMdd";

    /**
     * Format String : yyyyMMdd HHmmss
     */
    public static final String DateFormat4 = "yyyyMMdd HHmmss";

    /**
     * Format String : yyyy-MM-dd HH:mm
     */
    public static final String DateFormat5 = "yyyy-MM-dd HH:mm";

    /**
     * Format String : yyyyMMdd HH:mm
     */
    public static final String DateFormat6 = "yyyyMMdd HH:mm";

    
    /**
     * Format String : yyyy��MM��dd��
     */
    public static final String DateFormat7 = "yyyy��MM��dd��";
    
    /**
     * ��ȡ��ǰʱ��
     * 
     * @return Date����
     */
    public static Date getDate() {
        Calendar calendar = Calendar.getInstance();
        return calendar.getTime();
    }

    /**
     * ���ص�ǰʱ��
     * 
     * @param format ʱ���ʽ
     * @return string ��ǰʱ��ָ����ʽ�ַ���
     */
    public static String getDate(String format) {
        return getStringDate(getDate(), format);
    }

    /**
     * ���չ̶���ʽ��
     * 
     * @param date Date
     * @param method ʱ���ʽ
     * @return �ƶ���ʱ���ʽ
     */
    public static String getStringDate(Date date, String method) {
        SimpleDateFormat sdf = new SimpleDateFormat(method);
        String ret = null;
        try {
            ret = sdf.format(date);
        } catch (Exception ex) {
            LOGGER.error(ex, ex);
        }
        return ret;
    }

    /**
     * ��ȡǰ������ߺ���ʱ��
     * 
     * @param date Date
     * @param days ����
     * @return Dateʱ��
     */
    public static Date getDate(Date date, int days) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(date);
        calendar.add(Calendar.DAY_OF_YEAR, days);
        return calendar.getTime();
    }

    /**
     * ��ȡǰ������ߺ���ʱ��
     * 
     * @param dateStr 'yyyyMMdd'
     * @param days ����
     * @return Dateʱ��
     */
    public static Date getDate(String dateStr, int days) {
        return getDate(getDate(dateStr, DateFormat3), days);
    }

    /**
     * ����String����ʱ�䷵��Date
     * 
     * @param stringDate ʱ��
     * @param method ��ʽ
     * @return ����Date
     */
    public static Date getDate(String stringDate, String method) {
        SimpleDateFormat sdf = new SimpleDateFormat(method);
        Date ret = null;
        try {
            String integerDate = stringDate.replaceAll("-", "").replaceAll("/", "").replaceAll("��", "").replaceAll("��", "").replaceAll("��", "").replaceAll("��", ":");
            ret = sdf.parse(integerDate);
        } catch (Exception ex) {
            LOGGER.error(ex, ex);
        }
        return ret;
    }

    /**
     * ��ȡ��ʱ��������
     * 
     * @param beginDate ��ʼ����
     * @param endDate ��������
     * @return ����
     */
    public static int getDayCount(Date beginDate, Date endDate) {
        int count = 0;
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(beginDate);
        while (calendar.getTime().before(endDate)) {
            count++;
            calendar.add(Calendar.DAY_OF_YEAR, 1);
        }
        return count;
    }

    /**
     * ��ǰ���ڵ�ǰһ����
     * 
     * @param data
     * @return
     */
    public static String getLastMonth(Date data) {
        Calendar calendar = Calendar.getInstance();
        Date date = new Date(System.currentTimeMillis());
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, -1);
        date = calendar.getTime();
        return DateUtil.getStringDate(date, DateUtil.DateFormat2);
    }

    /**
     * ��ǰ���ڵĺ�һ����
     * 
     * @param data
     * @return
     */
    public static String getNextMonth(Date data) {
        Calendar calendar = Calendar.getInstance();
        Date date = new Date(System.currentTimeMillis());
        calendar.setTime(date);
        calendar.add(Calendar.MONTH, 1);
        date = calendar.getTime();
        return DateUtil.getStringDate(date, DateUtil.DateFormat2);
    }
    
    /**
     * ����LONG ���� ʱ����
     * @param diff
     * @return
     */
    public static String LongToString(long diff)
    {
        String showtime = "";
        long oneSecond = 1000;
        long oneMinute = oneSecond * 60;
        long oneHour = oneMinute * 60;
        long hours = diff / oneHour;
        diff -= hours * oneHour;
        long minutes = diff / oneMinute;
        diff -= minutes * oneMinute;
        long seconds = diff / oneSecond;
        if (hours > 0) showtime += hours + "ʱ";
        if (minutes > 0) showtime += minutes + "��";
        if (seconds > 0) showtime += seconds + "��";
        return showtime;
    }
}
