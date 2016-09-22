package com.rainhowchan.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.rainhowchan.domain.Book;

public class OgnlAction extends ActionSupport {

	@Override
	public String execute() throws Exception {
		ValueStack valueStack = ActionContext.getContext().getValueStack();
		List<Book> books=new ArrayList<>();
		books.add(new Book("Java从入门到精通", 12.05, "北京出版社"));
		books.add(new Book("JavaScript", 20.15, "北京出版社"));
		books.add(new Book("Jquery", 34, "北京出版社"));
		
//		valueStack.set("books", books);
		valueStack.push(books);
//		addActionMessage("查询到了！");
//		ActionContext.getContext().put("request", "RequestDemo!");
		return SUCCESS;
	}
}
