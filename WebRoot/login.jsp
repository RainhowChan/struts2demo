<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'register.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
form {
	border: 1px solid red;
	width: 50%;
	margin: auto;
	padding: 10px;
	margin-top: 100px;
}

em {
	color: red;
	font-weight: bold;
	padding-left: 1em;
	vartical-align: top;
}

em.success {
	background: url("images/checked.gif") no-repeat 0px 0px;
	padding-left: 16px;
}
</style>
</head>

<body>
	<center>
	<s:actionerror/>
	</center>
	<form action="${pageContext.request.contextPath }/login" method="post"
		id="form1">
		姓名：<input type="text" name="username"><em>*</em><br> <br>
		密码：<input type="password" name="password"><em>*</em><br>
		<br>
		<input type="submit" value="提交"><br> <br>
	</form>
	<center>
		<s:fielderror />
	</center>
</body>
</html>
