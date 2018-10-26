package com.irs.quartz;

import java.util.Date;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.irs.pojo.TbLog;
import com.irs.service.LogService;
import com.irs.util.DateUtil;
import com.irs.util.GlobalUtil;

/**
 * ���ϵͳ��־����
 * @author Mr Du
 *
 */

@Component
public class MethodLogQuartz {
    private static Logger LOGGER = Logger.getLogger(MethodLogQuartz.class);
    private static final String LOGDAYS = "log.days";

    @Autowired
    private LogService logServiceImpl;
    /** 
     * cron���ʽ��* * * * * *����6λ��ʹ�ÿո�������������£� 
     * cron���ʽ��*(��0-59) *(�� ��0-59) *(Сʱ0-23) *(����1-31) *(�·�1-12����JAN-DEC) *(����1-7����SUN-SAT) 
     */ 
    @Scheduled(cron="0 0 0 * * ?")
    public void clearLog() {
        int logDays = Integer.valueOf(GlobalUtil.getValue(LOGDAYS));
        Date date = DateUtil.getDate(DateUtil.getDate(), -logDays);
        int count =logServiceImpl.delLogsByDate(date);
        String date1=DateUtil.getStringDate(date, DateUtil.DateFormat1);
		LOGGER.info("��־��ʱɾ������ɾ����־����:" + count + ", createDate < "
                + date1);
        TbLog log=new TbLog();
        log.setIp("");
        log.setOperation("��ʱɾ����־��"+count+"��");
        log.setCreateTime(date1);
        log.setUsername("ϵͳ�Զ�����");
        log.setMethod("");
        log.setParams("");
		logServiceImpl.insLog(log);
    }
}
