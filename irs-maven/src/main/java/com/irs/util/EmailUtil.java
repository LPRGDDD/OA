package com.irs.util;

import com.sun.mail.util.MailSSLSocketFactory;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.util.Properties;

public class EmailUtil {
    // �����ߵ�����������/��Ȩ��
    private static String[] from={ GlobalUtil.getValue("email"), GlobalUtil.getValue("password")};

    /**
     * �����ʼ��ķ���
     * @param to �����ַ
     * @param msg ���͵���Ϣ
     */
    public static void sendMail(String to, String msg) throws Exception {

        // 1.�������Ӷ������ӵ����������
        Properties prop = new Properties();
        // �����ʼ�������������
        prop.setProperty("mail.host", "smtp.qq.com");
        // �����ʼ�Э������
        prop.setProperty("mail.transport.protocol", "smtp");
        // ���ͷ�������Ҫ�����֤
        prop.setProperty("mail.smtp.auth", "true");

        /*
            ע�⣺ʹ��qq���䷢����Ҫ����ssl����
        */
        MailSSLSocketFactory sf = new MailSSLSocketFactory();
        sf.setTrustAllHosts(true);
        prop.setProperty("mail.smtp.ssl.enable", "true");
        prop.put("mail.smtp.ssl.socketFactory", sf);

        Session session = Session.getInstance(prop,  new Authenticator() {
            public PasswordAuthentication getPasswordAuthentication() {
                //���÷����˵��ʺź�����
                return new PasswordAuthentication(from[0], from[1]);
            }
        });

        // 2.�����ʼ�����
        Message message = new MimeMessage(session);
        // 2.1 ���÷�����
        message.setFrom(new InternetAddress(from[0]));
        // 2.2 �����ռ���
        message.setRecipient(Message.RecipientType.TO, new InternetAddress(to));
        // 2.3 �����ʼ�����
        message.setSubject("��ӭ��ע��������վ");
        // 2.4 �����ʼ�������
        message.setContent("<h1>����<a href='http://127.0.0.1:8080/irs/account/active/"+msg+"'>������</a>�Լ����˺�</h1>", "text/html;charset=utf-8");

        // 3.�����ʼ�
        Transport.send(message);
    }
}
