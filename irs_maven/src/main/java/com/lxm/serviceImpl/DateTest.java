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
                    System.out.println("dt1 ��dt2ǰ");
                    return 1;
                } else if (dt1.getTime() < dt2.getTime()) {
                    System.out.println("dt1��dt2��");
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
            //System.out.println("���������="+day);   
        } catch (ParseException e)
        {
            // TODO �Զ����� catch ��
            e.printStackTrace();
        }   
        return day;
    } 
    /**
     * 
     * @doc ��ȡ���ڼ������
     * @param start
     *            ��ʼ����
     * @param end
     *            ��������
     * @return List����
     * @author lzy
     * @history 2017��10��17�� ����9:55:04 Create by ��lzy��
     */
    private static List<Date> getBetweenDates(Date start, Date end) {
        List<Date> result = new ArrayList<Date>();
        Calendar tempStart = Calendar.getInstance();
        tempStart.setTime(start);
        //��ӻ��ȥָ����ʱ������������򣬻��������Ĺ������磬��������ǰ��ʱ���ȥ5�죬���Ϳ���ͨ��
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
     * @doc ����ת�����ڼ�
     * @param datetime
     *            ���� ��:2017-10-17
     * @return String ��:���ڶ�
     * @author lzy
     * @history 2017��10��17�� ����9:55:30 Create by ��lzy��
     */
    public static String dateToWeek(String datetime) {
        SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
        String[] weekDays = { "������", "����һ", "���ڶ�", "������", "������", "������", "������" };
        Calendar cal = Calendar.getInstance(); // ���һ������
        Date datet = null;
        try {
            datet = f.parse(datetime);
            cal.setTime(datet);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        int w = cal.get(Calendar.DAY_OF_WEEK) - 1; // ָʾһ�������е�ĳ�졣
        if (w < 0)
            w = 0;
        return weekDays[w];
    }
}
