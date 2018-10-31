package com.lpr.entity;

import com.irs.pojo.TbAdmin;

public class SalData {
	/**
	 * ���������е��ϱ�����
	 */
    private Integer salDataId;//�������̱��

    private Double salSsalary;//Ӧ������

    private String salExpression;//����
   /* Ա��н��������ñ�*/
    private PersonXc personxc;
   /* н������еĹ�������*/
    private SalaryFlow salaryflow;
    /*�û���*/
    private TbAdmin user;

    public Integer getSalDataId() {
        return salDataId;
    }

    public void setSalDataId(Integer salDataId) {
        this.salDataId = salDataId;
    }

    public Double getSalSsalary() {
        return salSsalary;
    }

    public void setSalSsalary(Double salSsalary) {
        this.salSsalary = salSsalary;
    }

    public String getSalExpression() {
        return salExpression;
    }

    public void setSalExpression(String salExpression) {
        this.salExpression = salExpression == null ? null : salExpression.trim();
    }

	public PersonXc getPersonxc() {
		return personxc;
	}

	public void setPersonxc(PersonXc personxc) {
		this.personxc = personxc;
	}

	public SalaryFlow getSalaryflow() {
		return salaryflow;
	}

	public void setSalaryflow(SalaryFlow salaryflow) {
		this.salaryflow = salaryflow;
	}

	public TbAdmin getUser() {
		return user;
	}

	public void setUser(TbAdmin user) {
		this.user = user;
	}

	public SalData(Integer salDataId, Double salSsalary, String salExpression, PersonXc personxc, SalaryFlow salaryflow,
			TbAdmin user) {
		super();
		this.salDataId = salDataId;
		this.salSsalary = salSsalary;
		this.salExpression = salExpression;
		this.personxc = personxc;
		this.salaryflow = salaryflow;
		this.user = user;
	}

	public SalData() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "SalData [salDataId=" + salDataId + ", salSsalary=" + salSsalary + ", salExpression=" + salExpression
				+ ", personxc=" + personxc + ", salaryflow=" + salaryflow + ", user=" + user + "]";
	}

}