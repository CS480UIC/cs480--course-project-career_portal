<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Candidate</title>
    
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
  <h1>Delete Candidate</h1>
<form action="<c:url value='/CandidateServletDelete'/>" method="post">
	<input type="hidden" name="method" value="search"/>
	candidate_id    :<input type="text" name="candidate_id" value="${form.candidate_id }"/>
	<span style="color: red; font-weight: 900">${errors.candidate_id }</span>
	<br/>
	<input type="submit" value="Delete Candidate"/>
</form>
  </body>
</html>
