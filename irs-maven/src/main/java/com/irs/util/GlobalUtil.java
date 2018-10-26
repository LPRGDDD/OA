package com.irs.util;

import java.io.InputStream;
import java.util.Properties;

import org.apache.log4j.Logger;

/**
 * ���õ������ļ�������
 * @author Mr Du
 *
 */

public class GlobalUtil {
    private static Logger LOGGER = Logger.getLogger(GlobalUtil.class);

    /**
     * �ļ�����·��
     */
    public static final String PATHCONFIG = "/resource/global.properties";

    /**
     * ������õ�ֵ
     * 
     * @param key ��ʾ
     * @return ֵ
     */
    public static String getValue(String key) {
        try {
            Properties properties = new Properties();
            InputStream in = GlobalUtil.class.getResourceAsStream(PATHCONFIG);
            properties.load(in);
            in.close();
            return properties.getProperty(key);
        } catch (Exception e) {
            LOGGER.error(e, e);
        }
        return null;
    }
}
