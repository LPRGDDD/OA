package com.lwb.entity;

import java.util.List;

public class tb_dept {
	private Integer dept_id;

    private Integer dwinformation_id;

    private String dept_name;

    private Integer dept_number;

    private String dept_address;

    private String dept_zhuguan;

    private String dept_aid;

    private String dept_manager;

    private Integer dept_status;

    private String dept_branchlead;

    private String dept_phone;

    private String dept_fax;

    private String dept_function;

    private String dept_role;

    private String dept_sequence;
    
    private List<Record> record;

	public Integer getDept_id() {
		return dept_id;
	}

	public void setDept_id(Integer dept_id) {
		this.dept_id = dept_id;
	}

	public Integer getDwinformation_id() {
		return dwinformation_id;
	}

	public void setDwinformation_id(Integer dwinformation_id) {
		this.dwinformation_id = dwinformation_id;
	}

	public String getDept_name() {
		return dept_name;
	}

	public void setDept_name(String dept_name) {
		this.dept_name = dept_name;
	}

	public Integer getDept_number() {
		return dept_number;
	}

	public void setDept_number(Integer dept_number) {
		this.dept_number = dept_number;
	}

	public String getDept_address() {
		return dept_address;
	}

	public void setDept_address(String dept_address) {
		this.dept_address = dept_address;
	}

	public String getDept_zhuguan() {
		return dept_zhuguan;
	}

	public void setDept_zhuguan(String dept_zhuguan) {
		this.dept_zhuguan = dept_zhuguan;
	}

	public String getDept_aid() {
		return dept_aid;
	}

	public void setDept_aid(String dept_aid) {
		this.dept_aid = dept_aid;
	}

	public String getDept_manager() {
		return dept_manager;
	}

	public void setDept_manager(String dept_manager) {
		this.dept_manager = dept_manager;
	}

	public Integer getDept_status() {
		return dept_status;
	}

	public void setDept_status(Integer dept_status) {
		this.dept_status = dept_status;
	}

	public String getDept_branchlead() {
		return dept_branchlead;
	}

	public void setDept_branchlead(String dept_branchlead) {
		this.dept_branchlead = dept_branchlead;
	}

	public String getDept_phone() {
		return dept_phone;
	}

	public void setDept_phone(String dept_phone) {
		this.dept_phone = dept_phone;
	}

	public String getDept_fax() {
		return dept_fax;
	}

	public void setDept_fax(String dept_fax) {
		this.dept_fax = dept_fax;
	}

	public String getDept_function() {
		return dept_function;
	}

	public void setDept_function(String dept_function) {
		this.dept_function = dept_function;
	}

	public String getDept_role() {
		return dept_role;
	}

	public void setDept_role(String dept_role) {
		this.dept_role = dept_role;
	}

	public String getDept_sequence() {
		return dept_sequence;
	}

	public void setDept_sequence(String dept_sequence) {
		this.dept_sequence = dept_sequence;
	}

	public List<Record> getRecord() {
		return record;
	}

	public void setRecord(List<Record> record) {
		this.record = record;
	}

	public tb_dept(Integer dept_id, Integer dwinformation_id, String dept_name, Integer dept_number,
			String dept_address, String dept_zhuguan, String dept_aid, String dept_manager, Integer dept_status,
			String dept_branchlead, String dept_phone, String dept_fax, String dept_function, String dept_role,
			String dept_sequence, List<Record> record) {
		super();
		this.dept_id = dept_id;
		this.dwinformation_id = dwinformation_id;
		this.dept_name = dept_name;
		this.dept_number = dept_number;
		this.dept_address = dept_address;
		this.dept_zhuguan = dept_zhuguan;
		this.dept_aid = dept_aid;
		this.dept_manager = dept_manager;
		this.dept_status = dept_status;
		this.dept_branchlead = dept_branchlead;
		this.dept_phone = dept_phone;
		this.dept_fax = dept_fax;
		this.dept_function = dept_function;
		this.dept_role = dept_role;
		this.dept_sequence = dept_sequence;
		this.record = record;
	}

	public tb_dept() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "tb_dept [dept_id=" + dept_id + ", dwinformation_id=" + dwinformation_id + ", dept_name=" + dept_name
				+ ", dept_number=" + dept_number + ", dept_address=" + dept_address + ", dept_zhuguan=" + dept_zhuguan
				+ ", dept_aid=" + dept_aid + ", dept_manager=" + dept_manager + ", dept_status=" + dept_status
				+ ", dept_branchlead=" + dept_branchlead + ", dept_phone=" + dept_phone + ", dept_fax=" + dept_fax
				+ ", dept_function=" + dept_function + ", dept_role=" + dept_role + ", dept_sequence=" + dept_sequence
				+ ", record=" + record + "]";
	}
    
    
}
