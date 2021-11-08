<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Interview Review Create</title>
    
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
  <h1>Interview Review Create</h1>
<form action="<c:url value='/interview_reviewServletCreate'/>" method="post">
	review_id    :<input type="text" name="review_id" value="${form.review_id }"/>
	<span style="color: red; font-weight: 900">${errors.review_id }</span>
	<br/>
	employer_id    :<input type="text" name="employer_id" value="${form.employer_id }"/>
	<span style="color: red; font-weight: 900">${errors.employer_id }</span>
	<br/>
	candidate_id    :<input type="text" name="candidate_id" value="${form.candidate_id }"/>
	<span style="color: red; font-weight: 900">${errors.candidate_id }</span>
	<br/>
	title    :<input type="text" name="title" value="${form.title }"/>
	<span style="color: red; font-weight: 900">${errors.title }</span>
	<br/>
	posting_date    :<input type="text" name="posting_date" value="${form.posting_date }"/>
	<span style="color: red; font-weight: 900">${errors.posting_date }</span>
	<br/>
	job_review    :<input type="text" name="job_review" value="${form.job_review }"/>
	<span style="color: red; font-weight: 900">${errors.job_review }</span>
	<br/>
	<input type="submit" value="Create Interview Review "/>
</form>
  </body>
</html>
