<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'success.jsp' starting page</title>
    
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
    success<br><br>
  <%--   ${user.username }<br>
    ${user.gender }<br>
    ${user.birthday }<br> --%>
    <%-- <s:property value="%{[0].name}"/> --%>
    <%-- <s:property value="#request.request"/> --%>
    <hr>
    <s:iterator value="books" var="b">
    	<s:property value="#b.name"/><br>
    	<s:property value="#b.price"/><br>
    	<s:property value="#b.publish"/><br>
    </s:iterator>
    <hr>
       	<s:iterator value="bookList">
	    	<s:property value="name"/><br>
	    	<s:property value="price"/><br>
	    	<s:property value="publish"/><br>
    	</s:iterator>
    <hr>
    	<s:iterator value="[0].top">
	    	<s:property value="name"/><br>
	    	<s:property value="price"/><br>
	    	<s:property value="publish"/><br>
    	</s:iterator>
    <hr>
    <s:property value="book.name"/>
    <s:debug/>
    
    <s:i18n name="com.rainhowchan.package">
    	<s:text name="welcome">
    		<s:param>RainhowChan</s:param>
    	</s:text>
    </s:i18n>
  </body>
</html>
