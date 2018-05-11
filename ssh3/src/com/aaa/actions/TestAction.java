package com.aaa.actions;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Namespace("/")
@ParentPackage("struts-default")
@Component
@Scope("prototype")
public class TestAction {

	@Action(value="test",results={@Result(name="test",location="/test.jsp"),@Result(name="inpout",location="/input.jsp")})
	public String execute(){
		return "test";
	}
}
