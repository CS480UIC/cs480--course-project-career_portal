<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Update Employer</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Update Employer</h1>
<form action="<c:url value='/EmployerServletUpdate'/>" method="post">
	<input type="hidden" name="method" value="search"/>
	 Update employer_id   :<input type="text" name="employer_id" value="${form.employer_id }"/>
	<span style="color: red; font-weight: 900">${errors.employer_id }</span>
	<br/>
	<%-- <input type="hidden" name="method" value="search"/>
	 Update employer_name   :<input type="text" name="employer_name" value="${form.employer_name }"/>
	<span style="color: red; font-weight: 900">${errors.employer_name }</span> --%>
	<input type="submit" value="Update Employer"/> 
</form>
  </body>
</html>
