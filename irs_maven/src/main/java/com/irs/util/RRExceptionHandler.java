package com.irs.util;

import org.apache.shiro.authz.AuthorizationException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

/**
 * 
 * @Desc: �쳣������
 * @author Mr Du
 * @createTime 2018��2��25��
 * @version: v1.0
 */
@RestController
public class RRExceptionHandler {
	private Logger logger = LoggerFactory.getLogger(getClass());

	/**
	 * �Զ����쳣
	 */
	@ExceptionHandler(RRException.class)
	public ResultUtil handleRRException(RRException e){
		ResultUtil r = new ResultUtil();
		r.setCode(e.getCode());
		r.setMsg(e.getMessage());
		return r;
	}

	@ExceptionHandler(DuplicateKeyException.class)
	public ResultUtil handleDuplicateKeyException(DuplicateKeyException e){
		logger.error(e.getMessage(), e);
		return ResultUtil.error("���ݿ����Ѵ��ڸü�¼");
	}

	@ExceptionHandler(AuthorizationException.class)
	public ResultUtil handleAuthorizationException(AuthorizationException e){
		logger.error(e.getMessage(), e);
		return ResultUtil.error("û��Ȩ�ޣ�����ϵ����Ա��Ȩ");
	}

	@ExceptionHandler(Exception.class)
	public ResultUtil handleException(Exception e){
		logger.error(e.getMessage(), e);
		return ResultUtil.error();
	}
}
