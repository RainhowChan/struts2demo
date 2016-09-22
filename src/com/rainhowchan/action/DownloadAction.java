package com.rainhowchan.action;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.rainhowchan.utils.DownloadUtil;

public class DownloadAction extends ActionSupport{
	
	private String fileName;

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public String getContentType(){
		String mimeType=ServletActionContext.getServletContext().getMimeType(fileName);
		return mimeType;
	}
	
	public String getDownloadFileName() throws UnsupportedEncodingException{
		return DownloadUtil.getDownloadFileName(ServletActionContext.getRequest().getHeader("user-agent"), fileName);
	}
	
	public InputStream getInputStream() throws UnsupportedEncodingException, FileNotFoundException{
		fileName = new String(fileName.getBytes("iso-8859-1"),"utf-8");
		return new FileInputStream("E:\\fileupload\\"+fileName);
	}
	
}
