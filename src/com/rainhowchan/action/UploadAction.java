package com.rainhowchan.action;
import java.io.File;
import java.util.List;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;

import com.opensymphony.xwork2.ActionSupport;


public class UploadAction extends ActionSupport {

	private List<File> upload;//临时存储位置及文件名称
	private List<String> uploadContentType;//文件类型 如 text/plain
	private List<String> uploadFileName;//文件真实名称
	
	
	public List<File> getUpload() {
		return upload;
	}


	public void setUpload(List<File> upload) {
		this.upload = upload;
	}


	public List<String> getUploadContentType() {
		return uploadContentType;
	}


	public void setUploadContentType(List<String> uploadContentType) {
		this.uploadContentType = uploadContentType;
	}


	public List<String> getUploadFileName() {
		return uploadFileName;
	}


	public void setUploadFileName(List<String> uploadFileName) {
		this.uploadFileName = uploadFileName;
	}


	@Override
	public String execute() throws Exception {
		
		for(int i=0;i<upload.size();i++){
		
			FileUtils.copyFile(upload.get(i), new File("E:\\fileupload",uploadFileName.get(i)));
		}

		return SUCCESS;
	}
}
