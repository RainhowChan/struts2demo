package com.rainhowchan.utils;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

import sun.misc.BASE64Encoder;

public class DownloadUtil {

	public static String getDownloadFileName(String agent,String fileName) throws UnsupportedEncodingException{
		if(agent.contains("MSIE")){
			fileName=URLEncoder.encode(fileName,"utf-8");
		}else if (agent.contains("Firefox")) {
			// 火狐浏览器
			BASE64Encoder base64Encoder = new BASE64Encoder();
			fileName = "=?utf-8?B?"
					+ base64Encoder.encode(fileName.getBytes("utf-8")) + "?=";
		} else {
			// 其它浏览器
			fileName = URLEncoder.encode(fileName, "utf-8");
		}
		return fileName;
	}
	
}
