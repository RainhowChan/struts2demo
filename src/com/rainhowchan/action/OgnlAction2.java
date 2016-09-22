package com.rainhowchan.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.util.ValueStack;
import com.rainhowchan.domain.Book;
import com.rainhowchan.domain.User;

public class OgnlAction2 extends ActionSupport {

	private Book book=new Book("tom",20, "男");;
	
	private List<Book> bookList;
	
	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public List<Book> getBookList() {
		return bookList;
	}

	public void setBookList(List<Book> bookList) {
		this.bookList = bookList;
	}

	@Override
	public String execute() throws Exception {
		ValueStack valueStack = ActionContext.getContext().getValueStack();
		List<Book> bookList=new ArrayList<>();
		bookList.add(new Book("Java从入门到精通", 12.05, "北京出版社"));
		bookList.add(new Book("JavaScript", 20.15, "北京出版社"));
		bookList.add(new Book("Jquery", 34, "北京出版社"));
		
		valueStack.set("books", bookList);
//		valueStack.push(books);
//		addActionMessage("查询到了！");
//		ActionContext.getContext().put("request", "RequestDemo!");
		return SUCCESS;
	}
}
