package com.chl.entity;

public class Mail {
    private Integer emailid;

    private Integer userId;

    private Integer fromId;

    private Integer toId2;

    private String copyToId;

    private String subject;

    private String content;

    private String sendtime;

    private String attachmentId;

    private String attachmentName;

    private Integer sendFlag;

    private Integer smsRemind;

    private Integer important;

    private Integer secretLevel;

    public Integer getEmailid() {
        return emailid;
    }

    public void setEmailid(Integer emailid) {
        this.emailid = emailid;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getFromId() {
        return fromId;
    }

    public void setFromId(Integer fromId) {
        this.fromId = fromId;
    }

    public Integer getToId2() {
        return toId2;
    }

    public void setToId2(Integer toId2) {
        this.toId2 = toId2;
    }

    public String getCopyToId() {
        return copyToId;
    }

    public void setCopyToId(String copyToId) {
        this.copyToId = copyToId == null ? null : copyToId.trim();
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject == null ? null : subject.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getSendtime() {
        return sendtime;
    }

    public void setSendtime(String sendtime) {
        this.sendtime = sendtime == null ? null : sendtime.trim();
    }

    public String getAttachmentId() {
        return attachmentId;
    }

    public void setAttachmentId(String attachmentId) {
        this.attachmentId = attachmentId == null ? null : attachmentId.trim();
    }

    public String getAttachmentName() {
        return attachmentName;
    }

    public void setAttachmentName(String attachmentName) {
        this.attachmentName = attachmentName == null ? null : attachmentName.trim();
    }

    public Integer getSendFlag() {
        return sendFlag;
    }

    public void setSendFlag(Integer sendFlag) {
        this.sendFlag = sendFlag;
    }

    public Integer getSmsRemind() {
        return smsRemind;
    }

    public void setSmsRemind(Integer smsRemind) {
        this.smsRemind = smsRemind;
    }

    public Integer getImportant() {
        return important;
    }

    public void setImportant(Integer important) {
        this.important = important;
    }

    public Integer getSecretLevel() {
        return secretLevel;
    }

    public void setSecretLevel(Integer secretLevel) {
        this.secretLevel = secretLevel;
    }
}