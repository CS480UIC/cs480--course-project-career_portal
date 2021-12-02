<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Candidate Create</title>
    
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
  <h1>Candidate Create</h1>
<form action="<c:url value='/CandidateServletCreate'/>" method="post">
	candidate_id    :<input type="text" name="candidate_id" value="${form.candidate_id }"/>
	<span style="color: red; font-weight: 900">${errors.candidate_id }</span>
	<br/>
	first_name    :<input type="text" name="first_name" value="${form.first_name }"/>
	<span style="color: red; font-weight: 900">${errors.first_name }</span>
	<br/>
	last_name    :<input type="text" name="last_name" value="${form.last_name }"/>
	<span style="color: red; font-weight: 900">${errors.last_name }</span>
	<br/>
	email_id	：<input type="text" name="email_id" value="${form.email_id }"/>
	<span style="color: red; font-weight: 900">${errors.email_id }</span>
	<br/>
	phone_number	：<input type="text" name="phone_number" value="${form.phone_number }"/>
	<span style="color: red; font-weight: 900">${errors.phone_number }</span>
	<br/>
	experience_years	：<input type="text" name="experience_years" value="${form.experience_years }"/>
	<span style="color: red; font-weight: 900">${errors.experience_years }</span>
	<br/>
	skill	：<input type="text" name="skill" value="${form.skill }"/>
	<span style="color: red; font-weight: 900">${errors.skill }</span>
	<br/>
	sustainability_interest ：<input type="text" name="sustainability_interest" value="${form.sustainability_interest }"/>
	<span style="color: red; font-weight: 900">${errors.sustainability_interest }</span>
	<br/>
	<input type="submit" value="Create Candidate"/>
</form>
  </body>
</html>
