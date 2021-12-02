<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Read Employer Output</title>
    
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
  <h1>Read Employer Output</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form>
	employer_id    :<input type="text" name="employer_id" value="${employer.employer_id }" disabled/>
	<br/>
	employer_name：<input type="text" name="employer_name" value="${employer.employer_name }" disabled/>
	<br/>
	employer_headquarters	：<input type="text" name="employer_headquarters" value="${employer.employer_headquarters }" disabled/>
	<br/>
	employer_size	：<input type="text" name="employer_size" value="${employer.employer_size }" disabled/>
	<br/>
	employer_about	：<input type="text" name="employer_about" value="${employer.employer_about }" disabled/>
	<br/>
	domain_id	：<input type="text" name="domain_id" value="${employer.domain_id }" disabled/>
	<br/>
	sustainability_interest	：<input type="text" name="sustainability_interest" value="${employer.sustainability_interest }" disabled/>
	<br/>
</form>

<button onclick="window.location.href='<c:url value='/jsps/main.jsp'/>'">Continue</button>
</body>
</html>
