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
	private PbjlMapper pm;//排班记录
	@Autowired
	private ExcleMapper em;//打卡记录
	@Autowired
	private TongJiMapper tm;//添加考勤统计
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
	
	//排班记录 考勤记录
	@Override
	@Transactional
	public List<Map<String, Object>> qeruyAll(int id) {
		List<Map<String, Object>> list=dm.qeruyAll();//排班查询
		for (Map<String, Object> map : list) {
			String startTime =String.valueOf(map.get("dtDate_start")) ;//排班开始日期
			String endTime =  String.valueOf(map.get("dtDate_end"));//排班结束日期
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			List<Date> dateList;
			try {
				dateList = getBetweenDates(sdf.parse(startTime), sdf.parse(endTime));//循环去时间段内的日期 并判断周几
				for (int i = 0; i < dateList.size(); i++) {
					if(dateToWeek(sdf.format(dateList.get(i))).equals("星期六")){
						Pbjl p=new Pbjl();
						p.setPdate(sdf.format(dateList.get(i)));//开始日期 结束日期 之间的日期
						p.setWeekDays(dateToWeek(sdf.format(dateList.get(i))));//星期几
						p.setId(id);//人员ID
						String name1=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time1"));
						String name2=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time2"));
						String name3=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time3"));
						String name4=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time4"));
						p.setBtime1(name1);//规定打卡时间
						p.setBtime2(name2);
						p.setBtime3(name3);
						p.setBtime4(name4);
						p.setTimeState1("休息");
						p.setTimeState2("休息");
						p.setTimeState3("休息");
						p.setTimeState4("休息");
						DutyRoster d=new DutyRoster();
						d.setDtDate_Start(startTime);
						d.setDtDate_End(endTime);
						d.setId(id);//添加人员做比对
						int num=pm.selectPan(d);
						int day=(int) getDaySub(startTime, endTime);//计算开始日期   结束日期之间天数
						if(num>day){

						}else{
							pm.insertAll(p);//添加排班记录
						}

					}else if(dateToWeek(sdf.format(dateList.get(i))).equals("星期日")){
						Pbjl p=new Pbjl();
						p.setPdate(sdf.format(dateList.get(i)));//开始日期 结束日期 之间的日期
						p.setWeekDays(dateToWeek(sdf.format(dateList.get(i))));//星期几
						p.setId(id);//人员ID
						String name1=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time1"));
						String name2=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time2"));
						String name3=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time3"));
						String name4=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time4"));
						p.setBtime1(name1);//规定打卡时间
						p.setBtime2(name2);
						p.setBtime3(name3);
						p.setBtime4(name4);
						p.setTimeState1("休息");
						p.setTimeState2("休息");
						p.setTimeState3("休息");
						p.setTimeState4("休息");
						DutyRoster d=new DutyRoster();
						d.setDtDate_Start(startTime);
						d.setDtDate_End(endTime);
						d.setId(id);//添加人员做比对
						int num=pm.selectPan(d);
						int day=(int) getDaySub(startTime, endTime);//计算开始日期   结束日期之间天数
						if(num>day){

						}else{
							pm.insertAll(p);//添加排班记录
						}
					}else{
						Pbjl p=new Pbjl();
						p.setPdate(sdf.format(dateList.get(i)));//开始日期 结束日期 之间的日期
						p.setWeekDays(dateToWeek(sdf.format(dateList.get(i))));//星期几
						p.setId(id);//人员ID
						String name1=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time1"));
						String name2=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time2"));
						String name3=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time3"));
						String name4=sdf.format(dateList.get(i))+" "+String.valueOf(map.get("duty_time4"));
						p.setBtime1(name1);//规定打卡时间
						p.setBtime2(name2);
						p.setBtime3(name3);
						p.setBtime4(name4);
						DutyRoster d=new DutyRoster();
						d.setDtDate_Start(startTime);
						d.setDtDate_End(endTime);
						d.setId(id);//添加人员做比对
						Map<String,Object> map2=new HashMap<String, Object>();
						map2.put("date", sdf.format(dateList.get(i)));//根据日期判断是否有值
						map2.put("id", id);//根据人员判断 防止重复查询
						int shu=em.selectId(map2);
						if(shu>0){
							JobWork jw=em.selectKaoqin(map2); 
							int xx=compare_date(jw.getJtdate(),name1);//比较第一次打卡
							if(xx==1){//1 正常
								p.setTimeState1("迟到");
							}else if(xx==-1){//迟到
								p.setTimeState1("正常");
							}
							int xx1=compare_date(jw.getJtdate1(),name2);//比较第二次打卡
							if(xx1==1){//1 正常
								p.setTimeState2("正常");
							}else if(xx1==-1){//迟到
								p.setTimeState2("早退");
							}int xx2=compare_date(jw.getJtdate2(),name3);//比较第三次打卡
							if(xx2==1){//1 正常
								p.setTimeState3("迟到");
							}else if(xx2==-1){//迟到
								p.setTimeState3("正常");
							}
							int xx3=compare_date(jw.getJtdate3(),name4);//比较第四次打卡
							if(xx3==1){//1 正常
								p.setTimeState4("正常");
							}else if(xx3==-1){//迟到
								p.setTimeState4("早退");
							}
						}else{
							 p.setTimeState1("缺勤");
							  p.setTimeState2("缺勤"); 
							  p.setTimeState3("缺勤");
							  p.setTimeState4("缺勤"); 
						}
						int num=pm.selectPan(d);
						int day=(int) getDaySub(startTime, endTime);//计算开始日期   结束日期之间天数
						if(num>day){
						}else{
							pm.insertAll(p);//添加排班记录
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
	 * 时间比较大小   
	 * @param DATE1 
	 * @param DATE2
	 * @return 1 上班正常  -1 迟到    、、、 1 早退   -1 正常
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
	 * 计算天数
	 * @param beginDateStr 开始日期
	 * @param endDateStr  结束日期
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
	//添加个人考勤统计
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
				System.out.println("不可以添加");
				String id= String.valueOf(map.get("id"));
				System.out.println(id);
				Map map3=new HashMap();
				/*map3.put("id", id);
				tm.deleteId(map3);*/
		}
		return list;
	}
}
