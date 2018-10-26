package com.irs.util;

import java.io.PrintWriter;
import java.net.InetAddress;
import java.net.URLDecoder;
import java.net.UnknownHostException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

public class WebUtils {
	public static Logger log = Logger.getLogger(WebUtils.class);
	 
	 	/**
	 	 * ��ȡϵͳ������·��
	 	 * @param request
	 	 * @return
	 	 */
	 	public static String getContextPath(HttpServletRequest request) {
	 		return request.getSession().getServletContext().getContextPath();
	 	}
	 
	 	/**
	 	 * ��ȡ�û�������IP��ַ
	 	 * @param request
	 	 * @return
	 	 */
	 	public static String getRemoteAddr(HttpServletRequest request) {
	 		String ip = request.getHeader("X-Forwarded-For");
	 		if (StringUtils.isBlank(ip) || StringUtils.equalsIgnoreCase(ip, "unknown")) {
	 			ip = request.getHeader("Proxy-Client-IP");
	 		}
	 		if (StringUtils.isBlank(ip) || StringUtils.equalsIgnoreCase(ip, "unknown")) {
	 			ip = request.getHeader("WL-Proxy-Client-IP");
	 		}
	 		if (StringUtils.isBlank(ip) || StringUtils.equalsIgnoreCase(ip, "unknown")) {
	 			ip = request.getHeader("HTTP_CLIENT_IP");
	 		}
	 
	 		// �����������ṩ�Ĵ�head��ʲôֵ��ȡIP��ַ
	 		if (StringUtils.isBlank(ip) || StringUtils.equalsIgnoreCase(ip, "unknown")) {
	 			ip = request.getHeader("X-Real-IP");
	 		}
	 
	 		if (StringUtils.isBlank(ip) || StringUtils.equalsIgnoreCase(ip, "unknown")) {
	 			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
	 		}
	 		if (StringUtils.isBlank(ip) || StringUtils.equalsIgnoreCase(ip, "unknown")) {
	 			ip = request.getRemoteAddr();
	 		}
	 		if (StringUtils.isNotBlank(ip) && StringUtils.indexOf(ip, ",") > 0) {
	 			String[] ipArray = StringUtils.split(ip, ",");
	 			ip = ipArray[0];
	 		}
	 		return ip;
	 	}
	 
	 	/**
	 	 * ��ȡ����IP��ַ
	 	 */
	 	public static String getLocalAddr() throws UnknownHostException {
	 		InetAddress addr = InetAddress.getLocalHost();
	 		return addr.getHostAddress();
	 	}
	 
	 	/**
	 	 * ��������
	 	 */
	 	public static String encodingHelp(String s) throws Exception {
	 		return new String(s.getBytes("ISO-8859-1"), "UTF-8");
	 	}
	 
	 	/**
	 	 * ��ajax�ύ�����Ĳ������н���
	 	 * @param s
	 	 * @return
	 	 * @throws Exception
	 	 */
	 	public static String ajaxDecode(String s) throws Exception {
	 		return URLDecoder.decode(s, "UTF8");
	 	}
	 
	 	/**
	 	 * ҳ�浯����ʾ��Ϣ
	 	 * @param response
	 	 * @param msg
	 	 * @throws Exception
	 	 */
	 	public static void alertMsg(HttpServletResponse response, String msg) throws Exception {
	 		response.setCharacterEncoding("UTF-8");
	 		response.setContentType("text/html");
	 
	 		StringBuilder sb = new StringBuilder();
	 		sb.append("<script type='text/javascript'>");
	 		sb.append("alert(\""+msg+"\");");
	 		sb.append("</script>");
	 		PrintWriter out = response.getWriter();
	 		out.print(sb.toString());
	 		out.close();
	 	}
	 
	 	public static HttpServletRequest getRequest() {
	 		return ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
	 	}
	 	
	 	/**
	 	 * �ж��Ƿ�Ϊajax����
	 	 * @param request
	 	 * @return
	 	 */
	 	public static boolean isAjaxReqest(HttpServletRequest request) {
	 		if ((request.getHeader("accept") != null && (request.getHeader("accept").indexOf("application/json") > -1) || (request.getHeader("X-Requested-With") != null && request.getHeader(
	 				"X-Requested-With").indexOf("XMLHttpRequest") > -1))) {
	 			return true;
	 		}
	 		return false;
	 	}
	 
	 	/**
	 	 * ����ajax
	 	 * @param response
	 	 * @param code
	 	 * @param msg
	 	 * @param data
	 	 * @throws Exception
	 	 */
	 	/*public static void ajaxJson(HttpServletResponse response, Integer code, String msg) throws Exception {
	 		String json = JsonUtils.objectToJson(new ResultUtil(code, msg));
	 		response.setContentType("text/json; charset=utf-8");
	 		response.setHeader("Cache-Control", "no-cache"); // ȡ�����������
	 		PrintWriter out = response.getWriter();
	 		out.print(json);
	 		out.flush();
	 		out.close();
	 	}*/
}
