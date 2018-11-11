package com.irs.annotation;
  
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.JoinPoint;    
import org.aspectj.lang.annotation.*;    
import org.slf4j.Logger;    
import org.slf4j.LoggerFactory;    
import org.springframework.stereotype.Component;    
import org.springframework.web.context.request.RequestContextHolder;    
import org.springframework.web.context.request.ServletRequestAttributes;

import com.irs.pojo.TbAdmin;
import com.irs.pojo.TbLog;
import com.irs.service.LogService;
import com.irs.util.JsonUtils;
import com.irs.util.MyUtil;
import com.irs.util.WebUtils;

import javax.annotation.Resource;    
import javax.servlet.http.HttpServletRequest;    
import javax.servlet.http.HttpSession;    
import java.lang.reflect.Method;
    
/**
 * �е���   
 * @author Mr Du
 */
@Aspect    
@Component    
public  class SystemLogAspect {    
    //ע��Service���ڰ���־�������ݿ�    
    @Resource    
    private LogService logServiceImp;    
    //�����쳣��־��¼����    
    private  static  final Logger logger = LoggerFactory.getLogger(SystemLogAspect. class);    
    
    //Controller���е�    
    @Pointcut("@annotation(com.irs.annotation.SysLog)")    
     public  void controllerAspect() {    
    }    
    
    /**  
     * ǰ��֪ͨ ��������Controller���¼�û��Ĳ���  
     *  
     * @param joinPoint �е�  
     */    
    @Before("controllerAspect()")    
     public  void doBefore(JoinPoint joinPoint) {    
    
        HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();    
        HttpSession session = request.getSession();    
        //��ȡsession�е��û�    
        TbAdmin user = (TbAdmin)SecurityUtils.getSubject().getPrincipal();   
        //�����IP    
        //String ip = request.getRemoteAddr();
        
        String requestURI=request.getRequestURI();
        
        String ip=WebUtils.getRemoteAddr(request);
        String method = joinPoint.getSignature().getDeclaringTypeName() + 
                "." + joinPoint.getSignature().getName();
        String params = ""; 
        if (joinPoint.getArgs() !=  null && joinPoint.getArgs().length > 0) {    
            for ( int i = 0; i < joinPoint.getArgs().length; i++) {    
           	 params+=JsonUtils.objectToJson(joinPoint.getArgs()[i])+";";   
           }    
       }    
         try {    
            //*========����̨���=========*//    
            //System.out.println("=====ǰ��֪ͨ��ʼ=====");    
            String operation=getControllerMethodDescription(joinPoint);    
            String username=user.getUsername();
            //System.out.println("�������:" + params);    
            TbLog log=new TbLog();
            log.setCreateTime(MyUtil.getNowDateStr2());
            log.setIp(ip);
            log.setOperation(operation);
            log.setParams(params);
            log.setUsername(username);
            log.setMethod(requestURI);
			//*========�������ݿ���־=========*// 
            //System.out.println(log);
            logServiceImp.insLog(log);
            //�������ݿ�    
        }  catch (Exception e) {    
            //��¼�����쳣��־    
            logger.error("==ǰ��֪ͨ�쳣==");    
            logger.error("�쳣��Ϣ:{}", e.getMessage());    
        }    
    }    
    
    /**  
     * ��ȡע���жԷ�����������Ϣ ����Controller��ע��  
     *  
     * @param joinPoint �е�  
     * @return ��������  
     * @throws Exception  
     */    
     public  static String getControllerMethodDescription(JoinPoint joinPoint)  throws Exception {    
        String targetName = joinPoint.getTarget().getClass().getName();    
        String methodName = joinPoint.getSignature().getName();    
        Object[] arguments = joinPoint.getArgs();    
        Class targetClass = Class.forName(targetName);    
        Method[] methods = targetClass.getMethods();    
        String description = "";    
         for (Method method : methods) {    
             if (method.getName().equals(methodName)) {    
                Class[] clazzs = method.getParameterTypes();    
                 if (clazzs.length == arguments.length) {    
                    description = method.getAnnotation(SysLog. class).value();    
                     break;    
                }    
            }    
        }    
         return description;    
    }    
}    
