<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'down.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <a href="${pageContext.request.contextPath }/down?fileName=ic_userpage_bg_.png">ic_userpage_bg_.png</a><br>
    <a href="${pageContext.request.contextPath }/down?fileName=sdfs.txt">sdfs.txt</a><br>
    <a href="${pageContext.request.contextPath }/down?fileName=新建文本文档.txt">新建文本文档.txt</a><br> 
  </body>
</html>
