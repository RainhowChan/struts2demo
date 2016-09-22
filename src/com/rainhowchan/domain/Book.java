package com.rainhowchan.domain;

public class Book {
	private String name;
	private double price;
	private String publish;
	
	public Book() {}
	
	public Book(String name, double price, String publish) {
		this.name = name;
		this.price = price;
		this.publish = publish;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	
	
}
