<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Application</title>
    
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
  <h1>Delete Application</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/ApplicationServletDelete'/>" method="post">
	<input type="hidden" name="method" value="delete"/>
		<input type="hidden" name="applicant_id" value="${application.applicant_id }"/>
	applicant_id    :<input type="text" name="applicant_id" value="${application.applicant_id }" disabled/>
	<br/>
	
	candidate_id：<input type="text" name="candidate_id" value="${application.candidate_id }" disabled/>
	<br/>
	job_id	：<input type="text" name="job_id" value="${application.job_id }" disabled/>
	<br/>
	application_status	：<input type="text" name="application_status" value="${application.application_status }" disabled/>
	<br/>
	<input type="submit" value="Delete Application"/>
</form>

</body>
</html>
