package com.lxm.serviceImpl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DateTest {
    public static void main(String[] args) throws Exception {
        String startTime = "2018-11-01";
        String endTime = "2018-11-08";
        /*SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        List<Date> dateList = getBetweenDates(sdf.parse(startTime), sdf.parse(endTime));
        for (int i = 0; i < dateList.size(); i++) {
            System.out.println(sdf.format(dateList.get(i)) + " " + dateToWeek(sdf.format(dateList.get(i))));
        }*/
       /* int id =(int) getDaySub(startTime, endTime);
        System.out.println(id);*/
        int i= compare_date("2018-11-01 09:11:01", "");
        System.out.println("i=="+i);
    }
    
         
        public static int compare_date(String DATE1, String DATE2) {
            
            
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            try {
                Date dt1 = df.parse(DATE1);
                Date dt2 = df.parse(DATE2);
                if (dt1.getTime() > dt2.getTime()) {
                    System.out.println("dt1 在dt2前");
                    return 1;
                } else if (dt1.getTime() < dt2.getTime()) {
                    System.out.println("dt1在dt2后");
                    return -1;
                } else if(dt1.getTime()==dt2.getTime())  {
                    return 1;
                }else{
                	 return 0;
                }
            } catch (Exception exception) {
                exception.printStackTrace();
            }
            return 0;
        }
    public static long getDaySub(String beginDateStr,String endDateStr)
    {
        long day=0;
        java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd");    
        java.util.Date beginDate;
        java.util.Date endDate;
        try
        {
            beginDate = format.parse(beginDateStr);
            endDate= format.parse(endDateStr);    
            day=(endDate.getTime()-beginDate.getTime())/(24*60*60*1000);    
            //System.out.println("相隔的天数="+day);   
        } catch (ParseException e)
        {
            // TODO 自动生成 catch 块
            e.printStackTrace();
        }   
        return day;
    } 
    /**
     * 
     * @doc 获取日期间的日期
     * @param start
     *            开始日期
     * @param end
     *            结束日期
     * @return List集合
     * @author lzy
     * @history 2017年10月17日 上午9:55:04 Create by 【lzy】
     */
    private static List<Date> getBetweenDates(Date start, Date end) {
        List<Date> result = new ArrayList<Date>();
        Calendar tempStart = Calendar.getInstance();
        tempStart.setTime(start);
        //添加或减去指定的时间给定日历领域，基于日历的规则。例如，从日历当前的时间减去5天，您就可以通过
        tempStart.add(Calendar.DAY_OF_YEAR, 0);

        Calendar tempEnd = Calendar.getInstance();
        tempEnd.setTime(end);
        tempEnd.add(Calendar.DAY_OF_YEAR, 1);
        while (tempStart.before(tempEnd)) {
            result.add(tempStart.getTime());
            tempStart.add(Calendar.DAY_OF_YEAR, 1);
        }
        return result;
    }

    /**
     * 
     * @doc 日期转换星期几
     * @param datetime
     *            日期 例:2017-10-17
     * @return String 例:星期二
     * @author lzy
     * @history 2017年10月17日 上午9:55:30 Create by 【lzy】
     */
    public static String dateToWeek(String datetime) {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        String[] weekDays = { "星期日", "星期一", "星期二", "星期三", "星期四", "星期五", "星期六" };
        Calendar cal = Calendar.getInstance(); // 获得一个日历
        Date datet = null;
        try {
            datet = f.parse(datetime);
            cal.setTime(datet);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        int w = cal.get(Calendar.DAY_OF_WEEK) - 1; // 指示一个星期中的某天。
        if (w < 0)
            w = 0;
        return weekDays[w];
    }
}
