package com.aaa.actions;

import java.util.List;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.aaa.entity.Person;
import com.aaa.service.PersonService;
import com.aaa.service.StudentsService;
import com.aaa.util.Pager;
import com.opensymphony.xwork2.ActionSupport;

@Controller
public class PersonAction extends BaseAction {
	//参数
	private Person person;
	private String message;

	private int curPage;
	private int pageSize=5;
	
	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}
	
	public int getCurPage() {
		return curPage;
	}

	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Autowired
	private PersonService personService;
	@Autowired
	private StudentsService studentsService;

	public StudentsService getStudentsService() {
		return studentsService;
	}

	public void setStudentsService(StudentsService studentsService) {
		this.studentsService = studentsService;
	}

	public PersonService getPersonService() {
		return personService;
	}

	public void setPersonService(PersonService personService) {
		this.personService = personService;
	}
	
	public String queryAll(){
		ServletActionContext.getRequest().setAttribute("list", studentsService.find());
		return super.SUCCESS;
	}
	
	public String findByPages(){
		Pager p=personService.findByPages(curPage, pageSize);
		getRequest().put("p", p);
		return "findByPages";
	}
	
	public String save(){
			personService.save(person);
			if(person.getId()>0){
				this.message="录入成功";
			}
		return "save";
	}

}
