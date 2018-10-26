package com.irs.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

public class MyUtil {
	/**
	 * ���ص�ǰ���ڵ��ַ�����ʾ
	 * YYYY-MM-DD
	 * @return ��ǰ���ڵ��ַ�����ʾ
	 */
	public static String getNowDate(){
		return new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	}
	
	public static Date getDateByString(String dateStr){
		Date date=null;
		try {
			date=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	/**
	 * ��ȡ��ǰ���ڵ�Date��ʽ������(yyyy-MM-dd)
	 * @return
	 */
	public static Date createDate(){
		String nowDate = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		Date date=null;
		try {
			date=new SimpleDateFormat("yyyy-MM-dd").parse(nowDate);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return date;
	}
	
	/**
	 * �õ�yyyyMMddHHmmss
	 */
	public static String getNowDateStr(){
		return new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
	}
	/**
	 * �õ�yyyyMMddHHmmss
	 */
	public static String getNowDateStr2(){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	}
	
	/**
	 * �õ�һ���ַ�����ʽ�ĸ�ʽ��UUID
	 * @return
	 */
	public static String getStrUUID(){
		Random random = new Random();
		int end = random.nextInt(999);
		//���������λǰ�油0
		String endStr =String.format("%03d", end);
		return UUID.randomUUID().toString().replace("-", "")+endStr;
	}
}
