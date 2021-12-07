<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete application</title>
    
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
  <h1>Update application</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	applicant_id   :<input type="text" name="applicant_id" value="${application.applicant_id }" disabled/>
	<br/>
	applicant_status  :<input type="text" name="application_status" value="${application.application_status }" disabled/>
	<br/>

</form>
<h1>Update the values below</h1>
<form action="<c:url value='/ApplicationServletUpdate'/>" method="post">
		<input type="hidden" name="method" value="update"/>
				<input type="hidden" name="applicant_id" value="${application.applicant_id}"/>
	Application_status：<input type="text" name="application_status" value="${form.application_status}"/>
	<span style="color: red; font-weight: 900">${errors.application_status }</span>
	<br/>
	<input type="submit" value="Update application"/>
</form>

</body>
</html>
