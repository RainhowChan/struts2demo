<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'json.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript">
		$(function(){
			$("#but1").click(function(){
				
				$(".h2").load("${pageContext.request.contextPath}/json",function(responseTxt,responseStatus,xhr){
					if(statusTxt=="success")
					    alert("外部内容加载成功！");
					if(statusTxt=="error")
      					alert("Error: "+xhr.status+": "+xhr.statusText);
				});
			});
		});	
	</script>
  </head>
  
  <body>
    <button id="but1">点击获取数据</button>
    <h2 class="h2"></h2>
  </body>
</html>
