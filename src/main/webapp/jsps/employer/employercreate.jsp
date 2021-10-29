<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Employer Create</title>
    
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
  <h1>Employer Create</h1>
<form action="<c:url value='/Entity1ServletCreate'/>" method="post">
	employer_id    :<input type="text" name="employer_id" value="${form.employer_id }"/>
	<span style="color: red; font-weight: 900">${errors.employer_id }</span>
	<br/>
	employer_name    :<input type="text" name="employer_name" value="${form.employer_name }"/>
	<span style="color: red; font-weight: 900">${errors.employer_name }</span>
	<br/>
	employer_headquarters    :<input type="text" name="employer_headquarters" value="${form.employer_headquarters }"/>
	<span style="color: red; font-weight: 900">${errors.employer_headquarters }</span>
	<br/>
	employer_size    :<input type="text" name="employer_size" value="${form.employer_size }"/>
	<span style="color: red; font-weight: 900">${errors.employer_size }</span>
	<br/>
	employer_about ：<input type="text" name="employer_about" value="${form.employer_about }"/>
	<span style="color: red; font-weight: 900">${errors.employer_about }</span>
	<br/>
	domain_id ：<input type="text" name="domain_id" value="${form.domain_id }"/>
	<span style="color: red; font-weight: 900">${errors.domain_id }</span>
	<br/>
	sustainability_interest ：<input type="text" name="sustainability_interest" value="${form.sustainability_interest }"/>
	<span style="color: red; font-weight: 900">${errors.sustainability_interest }</span>
	<br/>
</form>
  </body>
</html>
