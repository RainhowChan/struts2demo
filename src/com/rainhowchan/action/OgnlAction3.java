package com.rainhowchan.action;

import java.util.ArrayList;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;
import com.rainhowchan.domain.Product;

public class OgnlAction3 extends ActionSupport {

	private List<Product> ps;

	public List<Product> getPs() {
		return ps;
	}

	public void setPs(List<Product> ps) {
		this.ps = ps;
	}

	@Override
	public String execute() throws Exception {
		ps = new ArrayList<Product>();
		ps.add(new Product("电视机", 1800, 100));
		ps.add(new Product("洗衣机", 800, 10));
		ps.add(new Product("空调", 3800, 100));
		return SUCCESS;
	}
}
