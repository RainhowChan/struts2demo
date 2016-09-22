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
    
    <title>My JSP 'index.jsp' starting page</title>
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
   
     <hr>
     	<s:property value="#attr.username"/>
     	<s:property value="#parameters.username"/>
     	<s:property value="#parameters.password"/>
     <%-- 	
     	<s:iterator value="#parameters" var="para">
     		<s:property value="#para.username"/>
     		<s:property value="#para.password"/>
     	</s:iterator>
     	 --%>
     	 
     	 <s:radio list="#{'male':'男','female':'女'}" name="sex"></s:radio>
     	 <s:select list="#{'北京':'beijing','湖北':'武汉' }"></s:select>
     <hr>
	     <s:iterator value="ps.{name}" var="p">
	     	<%-- <s:property value="#p.name"/>
	     	<s:property value="#p.price"/> --%>
	     	<s:property value="#p"/><br>
	     </s:iterator>
     
     <hr>
     <table style="width:400px;margin:auto;" class="">
      <s:iterator value="ps.{?#this.price>1000}" var="p">
      <tr>
     	<td><s:property value="#p.name"/></td>
     	<td><s:property value="#p.price"/></td>
     	<td><s:property value="#p.count"/></td>
     </tr>
     </s:iterator>
     
     
     </table>
    
     <s:debug/>
  </body>
</html>
