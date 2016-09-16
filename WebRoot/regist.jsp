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
em {color:red;font-weight:bold;padding-left:1em;vartical-align:top;}
em.success {
	background: url("images/checked.gif") no-repeat 0px 0px;
	padding-left: 16px;
}
</style>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.validate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#form1").validate({
			rules : {
				/* username : {
					required : true,
					minlength : 4,
					maxlength : 8
				}, */
				password : {
					required : true,
					minlength : 4,
					maxlength : 8
				},
				birthday : {
					required : true,
					date:true
				}
			},
			messages:{
				/* username:{
					required:"请输入用户名",
					minlength:"用户名不得少于两个字符",
					maxlength:"用户名不得多于八个字符"
				}, */
				password:{
					required:"请输入密码",
					minlength:"密码不得少于四个字符",
					maxlength:"密码不得多于八个字符"
				},
				birthday:{
					required:"请输入生日",
					date:"请输入合法的日期"
				}
			},
			errorElement : "em",
			success : function(label) {
				label.text(" ").addClass("success");
			}
		});
	}); 
</script>
</head>

<body>
	<form action="${pageContext.request.contextPath }/regist" method="post"
		id="form1">
		姓名：<input type="text" name="username"><em>*</em><br>
		<br> 密码：<input type="password" name="password"><em>*</em><br>
		<br> 性别：<input type="radio" name="gender" value="male" checked>男
		<input type="radio" name="gender" value="female">女<br>
		<br> 生日：<input type="text" name="birthday"><em>*</em><br>
		<br> <input type="submit" value="提交"><br>
		<br>
	</form>
	<center>
		<s:fielderror />
	</center>
</body>
</html>
