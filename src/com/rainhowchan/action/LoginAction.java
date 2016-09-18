package com.rainhowchan.action;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rainhowchan.domain.User;


public class LoginAction extends ActionSupport implements ModelDriven<User>{
	
	private User user=new User();
	
	@Override
	public String execute() throws Exception{
		
		if("tom".equals(user.getUsername())&&"123".equals(user.getPassword())){
			ServletActionContext.getRequest().getSession().setAttribute("user", user);
			return SUCCESS;
		}else{
			addActionError("用戶名或密碼錯誤！");
			return INPUT;
		}
		
		
	}

	@Override
	public User getModel() {
		return user;
	}
	
}
