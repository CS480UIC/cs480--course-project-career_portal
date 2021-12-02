<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Job</title>
    
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
  <h1>Delete Entity</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/Job_postingServletDelete'/>" method="post">
	<input type="hidden" name="method" value="delete"/>
		<input type="hidden" name="job_id" value="${job_posting.job_id }"/>
	Job_id   :<input type="text" name="job_id" value="${job_posting.job_id }" disabled/>
	<br/>
	Title   :<input type="text" name="title" value="${job_posting.title }" disabled/>
	<br/>
	employer_id  :<input type="text" name="employer_id" value="${job_posting.employer_id }" disabled/>
	<br/>
		job_location   :<input type="text" name="job_location" value="${job_posting.job_location }" disabled/>
	<br/>
		job_description  :<input type="text" name="job_description" value="${job_posting.job_description }" disabled/>
	<br/>
		application_deadline   :<input type="text" name="application_deadline" value="${job_posting.application_deadline }" disabled/>
	<br/>
		posting_date   :<input type="text" name="posting_date" value="${job_posting.posting_date }" disabled/>
	<br/>
	
	
	<input type="submit" value="Delete Job posting"/>
</form>

</body>
</html>
