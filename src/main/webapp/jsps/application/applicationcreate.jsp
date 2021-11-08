<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Application Create</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	add line
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <h1>Application Create</h1>
<form action="<c:url value='/applicationServletCreate'/>" method="post">
	application_id    :<input type="text" name="application_id" value="${form.application_id }"/>
	<span style="color: red; font-weight: 900">${errors.application_id }</span>
	<br/>
	applicant_id    :<input type="text" name="applicant_id" value="${form.applicant_id }"/>
	<span style="color: red; font-weight: 900">${errors.applicant_id }</span>
	<br/>
	job_id    :<input type="text" name="job_id" value="${form.job_id }"/>
	<span style="color: red; font-weight: 900">${errors.job_id }</span>
	<br/>
	application_status    :<input type="text" name="application_status" value="${form.application_status }"/>
	<span style="color: red; font-weight: 900">${errors.application_status }</span>
	<br/>
	
	<input type="submit" value="Create Application"/>
</form>
  </body>
</html>
