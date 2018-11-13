package com.lxm.controller;

import java.text.ParseException;

import java.text.SimpleDateFormat;

import java.util.ArrayList;

import java.util.Date;

import java.util.List;
public class Riqi {

	 

private static List<Date> dateSplit(Date startDate, Date endDate)

        throws Exception {

    if (!startDate.before(endDate))

        throw new Exception("��ʼʱ��Ӧ���ڽ���ʱ��֮��");

    Long spi = endDate.getTime() - startDate.getTime();

    Long step = spi / (24 * 60 * 60 * 1000);// �������

    List<Date> dateList = new ArrayList<Date>();

    dateList.add(endDate);

    for (int i = 1; i <= step; i++) {

        dateList.add(new Date(dateList.get(i - 1).getTime()

                - (24 * 60 * 60 * 1000)));// ����һ���һ

    }

    return dateList;

}

 

public static void main(String[] args) throws ParseException {

    try {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        Date start = sdf.parse("2011-11-01");

        Date end = sdf.parse("2011-11-24");

        List<Date> lists = dateSplit(start, end);

        if (!lists.isEmpty()) {

            for (Date date : lists) {
            	if(sdf.format(date).equals("2011-11-05")){
            		System.out.println("��ʱ��");
            	}
            }

        }
    } catch (Exception e) {
    }

}

}
