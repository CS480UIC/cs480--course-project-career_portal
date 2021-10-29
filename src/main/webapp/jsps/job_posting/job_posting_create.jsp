<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Job Posting Create</title>
    
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
  <h1>Job Posting Create</h1>
<form action="<c:url value='/Job_PostingServletCreate'/>" method="post">
	job_id    :<input type="text" name="job_id" value="${form.job_id }"/>
	<span style="color: red; font-weight: 900">${errors.job_id }</span>
	<br/>
	title    :<input type="text" name="title" value="${form.title }"/>
	<span style="color: red; font-weight: 900">${errors.title }</span>
	<br/>
	employer_id    :<input type="text" name="employer_id" value="${form.employer_id }"/>
	<span style="color: red; font-weight: 900">${errors.employer_id }</span>
	<br/>
	job_location    :<input type="text" name="job_location" value="${form.job_location }"/>
	<span style="color: red; font-weight: 900">${errors.job_location }</span>
	<br/>
	job_description    :<input type="text" name="job_description" value="${form.job_description }"/>
	<span style="color: red; font-weight: 900">${errors.job_description }</span>
	<br/>
	application_deadline    :<input type="text" name="application_deadline" value="${form.application_deadline }"/>
	<span style="color: red; font-weight: 900">${errors.application_deadline }</span>
	<br/>
	posting_date    :<input type="text" name="posting_date" value="${form.posting_date }"/>
	<span style="color: red; font-weight: 900">${errors.posting_date }</span>
	<br/>
	<input type="submit" value="Create Job Posting"/>
</form>
  </body>
</html>
