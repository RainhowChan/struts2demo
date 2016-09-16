package com.rainhowchan.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.rainhowchan.domain.User;

public class RegistAction extends ActionSupport implements ModelDriven<User>{

	private static final long serialVersionUID = -1703659133693030952L;

	private User user=new User();
	
	@Override
	public String execute() throws Exception {
		ActionContext context = ActionContext.getContext();
		context.put("user",user);
		return SUCCESS;
	}

	/*@Override
	public void validate(){
		
		if(user.getUsername()==null|| user.getUsername().trim().length() == 0){
			addFieldError("username.message", "用户名不能为空");
		}
		
		if(user.getPassword()==null||user.getPassword().trim().length()==0){
			addFieldError("password.message", "密码不能为空");
		}
		
		if(user.getBirthday()==null){
			addFieldError("birthday.message", "生日不能为空");
		}
	}*/
	
	@Override
	public User getModel() {
		return user;
	}
	
}
