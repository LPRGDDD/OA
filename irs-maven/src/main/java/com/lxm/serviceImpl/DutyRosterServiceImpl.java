package com.lxm.serviceImpl;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.lxm.dao.DutyRosterMapper;
import com.lxm.dao.ExcleMapper;
import com.lxm.dao.PbjlMapper;
import com.lxm.dao.TongJiMapper;
import com.lxm.entity.DutyRoster;
import com.lxm.entity.JobWork;
import com.lxm.entity.Pbjl;
import com.lxm.entity.TongJi;
import com.lxm.service.DutyRosterService;
@Service
public class DutyRosterServiceImpl implements DutyRosterService {
	@Autowired
	private DutyRosterMapper dm;
	@Autowired
	private PbjlMapper pm;//�Ű��¼
	@Autowired
	private ExcleMapper em;//�򿨼�¼
	@Autowired
	private TongJiMapper tm;//��ӿ���ͳ��
	@Override
	public int deleteByPrimaryKey(Integer drid) {
		// TODO Auto-generated method stub
		return dm.deleteByPrimaryKey(drid);
	}

	@Override
	public int insert(DutyRoster record) {
		// TODO Auto-generated method stub
		return dm.insert(record);
	}

	@Override
	public List<Map<String, Object>> selectByPrimaryKey() {
		// TODO Auto-generated method stub
		return dm.selectByPrimaryKey();
	}

	@Override
	public int updateState(Map<String,Object> map) {
		// TODO Auto-generated method stub
		return dm.updateState(map);
	}

	@Override
	public int updateDuty(DutyRoster duty) {
		// TODO Auto-generated method stub
		return dm.updateDuty(duty);
	}

	@Override
	public DutyRoster selectById(int id) {
		// TODO Auto-generated method stub
		return dm.selectById(id);
	}

	@Override
	public int updateRoter(DutyRoster dr) {
		// TODO Auto-generated method stub
		return dm.updateRoter(dr);
	}
	
	//�Ű��¼ ���ڼ�¼
	@Override
	@Transactional
	public List<Map<String, Object>> qeruyAll(int id) {
		List<Map<String, Object>> list=dm.qeruyAll();//�Ű��ѯ
		for (Map<String, Object> map : list) {
			String startTime =String.valueOf(map.get("dtDate_start")) ;//�Ű࿪ʼ����
			String endTime =  String.valueOf(map.get("dtDate_end"));//�Ű��������
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			List<Date> dateList;
			try {
				dateList = getBetweenDates(sdf.parse(startTime), sdf.parse(endTime));//ѭ��ȥʱ����ڵ����� ���ж��ܼ�
				for (int i = 0; i < dateList.size(); i++) {
					if(dateToWeek(sdf.format(dateList.get(i))).equals("������")){
						Pbjl p=new Pbjl();
						p.setPdate(sdf.format(dateList.get(i)));//��ʼ���� �������� ֮�������
						p.setWeekDays(dateToWeek(sdf.format(dateList.get(i))));//���ڼ�
						p.setId(id);//��ԱID
						String name1=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time1"));
						String name2=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time2"));
						String name3=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time3"));
						String name4=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time4"));
						p.setBtime1(name1);//�涨��ʱ��
						p.setBtime2(name2);
						p.setBtime3(name3);
						p.setBtime4(name4);
						p.setTimeState1("��Ϣ");
						p.setTimeState2("��Ϣ");
						p.setTimeState3("��Ϣ");
						p.setTimeState4("��Ϣ");
						DutyRoster d=new DutyRoster();
						d.setDtDate_Start(startTime);
						d.setDtDate_End(endTime);
						d.setId(id);//�����Ա���ȶ�
						int num=pm.selectPan(d);
						int day=(int) getDaySub(startTime, endTime);//���㿪ʼ����   ��������֮������
						if(num>day){

						}else{
							pm.insertAll(p);//����Ű��¼
						}

					}else if(dateToWeek(sdf.format(dateList.get(i))).equals("������")){
						Pbjl p=new Pbjl();
						p.setPdate(sdf.format(dateList.get(i)));//��ʼ���� �������� ֮�������
						p.setWeekDays(dateToWeek(sdf.format(dateList.get(i))));//���ڼ�
						p.setId(id);//��ԱID
						String name1=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time1"));
						String name2=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time2"));
						String name3=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time3"));
						String name4=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time4"));
						p.setBtime1(name1);//�涨��ʱ��
						p.setBtime2(name2);
						p.setBtime3(name3);
						p.setBtime4(name4);
						p.setTimeState1("��Ϣ");
						p.setTimeState2("��Ϣ");
						p.setTimeState3("��Ϣ");
						p.setTimeState4("��Ϣ");
						DutyRoster d=new DutyRoster();
						d.setDtDate_Start(startTime);
						d.setDtDate_End(endTime);
						d.setId(id);//�����Ա���ȶ�
						int num=pm.selectPan(d);
						int day=(int) getDaySub(startTime, endTime);//���㿪ʼ����   ��������֮������
						if(num>day){

						}else{
							pm.insertAll(p);//����Ű��¼
						}
					}else{
						Pbjl p=new Pbjl();
						p.setPdate(sdf.format(dateList.get(i)));//��ʼ���� �������� ֮�������
						p.setWeekDays(dateToWeek(sdf.format(dateList.get(i))));//���ڼ�
						p.setId(id);//��ԱID
						String name1=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time1"));
						String name2=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time2"));
						String name3=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time3"));
						String name4=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time4"));
						p.setBtime1(name1);//�涨��ʱ��
						p.setBtime2(name2);
						p.setBtime3(name3);
						p.setBtime4(name4);
						DutyRoster d=new DutyRoster();
						d.setDtDate_Start(startTime);
						d.setDtDate_End(endTime);
						d.setId(id);//�����Ա���ȶ�
						Map<String,Object> map2=new HashMap<String, Object>();
						map2.put("date", sdf.format(dateList.get(i)));//���������ж��Ƿ���ֵ
						map2.put("id", id);//������Ա�ж� ��ֹ�ظ���ѯ
						int shu=em.selectId(map2);
						if(shu>0){
							JobWork jw=em.selectKaoqin(map2); 
							int xx=compare_date(jw.getJtdate(),name1);//�Ƚϵ�һ�δ�
							if(xx==1){//1 ����
								p.setTimeState1("�ٵ�");
							}else if(xx==-1){//�ٵ�
								p.setTimeState1("����");
							}
							int xx1=compare_date(jw.getJtdate1(),name2);//�Ƚϵڶ��δ�
							if(xx1==1){//1 ����
								p.setTimeState2("����");
							}else if(xx1==-1){//�ٵ�
								p.setTimeState2("����");
							}int xx2=compare_date(jw.getJtdate2(),name3);//�Ƚϵ����δ�
							if(xx2==1){//1 ����
								p.setTimeState3("�ٵ�");
							}else if(xx2==-1){//�ٵ�
								p.setTimeState3("����");
							}
							int xx3=compare_date(jw.getJtdate3(),name4);//�Ƚϵ��Ĵδ�
							if(xx3==1){//1 ����
								p.setTimeState4("����");
							}else if(xx3==-1){//�ٵ�
								p.setTimeState4("����");
							}
						}else{
							 p.setTimeState1("ȱ��");
							  p.setTimeState2("ȱ��"); 
							  p.setTimeState3("ȱ��");
							  p.setTimeState4("ȱ��"); 
						}
						int num=pm.selectPan(d);
						int day=(int) getDaySub(startTime, endTime);//���㿪ʼ����   ��������֮������
						if(num>day){
						}else{
							pm.insertAll(p);//����Ű��¼
						}
					}

				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}






		return list;
	}
	/**
	 * ʱ��Ƚϴ�С   
	 * @param DATE1 
	 * @param DATE2
	 * @return 1 �ϰ�����  -1 �ٵ�    ������ 1 ����   -1 ����
	 */
	public static int compare_date(String DATE1, String DATE2) {

		DateFormat df = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		try {
			Date dt1 = df.parse(DATE1.toString());
			Date dt2 = df.parse(DATE2.toString());
			if (dt1.getTime() > dt2.getTime()) {
				return 1;
			} else if (dt1.getTime() < dt2.getTime()) {
				return -1;
			}else if(dt1.getTime()==dt2.getTime())  {
				return 1;
			}else{
				return 0;
			}
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return 0;
	}
	/**
	 * ��������
	 * @param beginDateStr ��ʼ����
	 * @param endDateStr  ��������
	 * @return
	 */
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
	//��Ӹ��˿���ͳ��
	@Override
	@Transactional
	public List<Map<String, Object>> KaoQinTongJi(Map<String, Object> map) {
		List<Map<String,Object>> list=dm.KaoQinTongJi(map);
		Map<String,Object> map1=new HashMap<String, Object>();
		map1.put("date", map.get("conter"));
		map1.put("id",map.get("id"));
		int num=tm.selectId(map1);
		if(list!=null && num==0){
			TongJi t=new TongJi();
			String name=(String)list.get(0).get("username");
			String id= String.valueOf(map.get("id"));
			t.setId(id);
			String yingchu= String.valueOf(list.get(0).get("yingchu"));
			String shichu=String.valueOf(list.get(0).get("shichu"));
			t.setUsername((String)list.get(0).get("username"));
			t.setYingchu(yingchu);
			t.setShichu(shichu);
			t.setXiutian(String.valueOf(list.get(0).get("xiutian")));
			t.setXiutian(String.valueOf(list.get(0).get("xiutian")));
			t.setQuetian(String.valueOf(list.get(0).get("quetian")));
			t.setChici(String.valueOf(list.get(0).get("chici")));
			t.setZaoci(String.valueOf(list.get(0).get("zaoci")));
			t.setQingci(String.valueOf(list.get(0).get("qingci")));
			t.setJiaci(String.valueOf(list.get(0).get("jiaci")));
			t.setChuci(String.valueOf(list.get(0).get("chuci")));
			t.setWaici(String.valueOf(list.get(0).get("waici")));
			t.setTdate(String.valueOf(map.get("conter")));
			tm.insert(t);
		}else{
				System.out.println("���������");
				String id= String.valueOf(map.get("id"));
				System.out.println(id);
				Map map3=new HashMap();
				/*map3.put("id", id);
				tm.deleteId(map3);*/
		}
		return list;
	}
}
