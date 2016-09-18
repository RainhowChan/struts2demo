package com.rainhowchan.action;
import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

import com.opensymphony.xwork2.ActionSupport;


public class UploadAction extends ActionSupport {

	private File upload;//临时存储位置及文件名称
	private String uploadContentType;//文件类型 如 text/plain
	private String uploadFileName;//文件真实名称
	
	public File getUpload() {
		return upload;
	}
	public void setUpload(File upload) {
		this.upload = upload;
	}
	public String getUploadContentType() {
		return uploadContentType;
	}
	public void setUploadContentType(String uploadContentType) {
		this.uploadContentType = uploadContentType;
	}

	public String getUploadFileName() {
		return uploadFileName;
	}
	public void setUploadFileName(String uploadFileName) {
		this.uploadFileName = uploadFileName;
	}
	@Override
	public String execute() throws Exception {
		FileUtils.copyFile(upload, new File("E:\\fileupload",uploadFileName));
		return SUCCESS;
	}
}
