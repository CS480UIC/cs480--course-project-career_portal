<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>top</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="content-type" content="text/html;charset=utf-8">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<style type="text/css">
	body {
		background: #4682B4; 
	}
	a {
		text-transform:none;
		text-decoration:none;
	} 
	a:hover {
		text-decoration:underline;
	}
</style>
  </head>
  
  <body>
<h1 style="text-align: center;">Career Portal</h1>
<div style="font-size: 10pt;">
	<c:choose>
		<c:when test="${empty sessionScope.session_user }">
			<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
			<a href="<c:url value='/jsps/user/regist.jsp'/>" target="_parent">Register</a> |&nbsp; 
			<a href="<c:url value='/jsps/employer/employercreate.jsp'/>" target="_parent">Create Employer</a> |&nbsp; 
			<a href="<c:url value='/jsps/employer/employerread.jsp'/>" target="_parent">Read Employer</a> |&nbsp;
			<a href="<c:url value='/jsps/employer/employerupdate.jsp'/>" target="_parent">Update Employer</a> |&nbsp;	 
			<a href="<c:url value='/jsps/employer/employerdelete.jsp'/>" target="_parent">Delete Employer</a>	
			<a href="<c:url value='/jsps/candidate/candidatecreate.jsp'/>" target="_parent">Create Candidate</a> |&nbsp; 
			<a href="<c:url value='/jsps/candidate/candidateread.jsp'/>" target="_parent">Read Candidate</a> |&nbsp;
			<a href="<c:url value='/jsps/candidate/candidateupdate.jsp'/>" target="_parent">Update Candidate</a> |&nbsp;	 
			<a href="<c:url value='/jsps/candidate/candidatedelete.jsp'/>" target="_parent">Delete Candidate</a>	
			<a href="<c:url value='/jsps/job_posting/job_posting_create.jsp'/>" target="_parent">Create Job Posting</a> |&nbsp; 
			<a href="<c:url value='/jsps/job_posting/job_postingread.jsp'/>" target="_parent">Read Job Posting</a> |&nbsp;
			<a href="<c:url value='/jsps/job_posting/job_postingupdate.jsp'/>" target="_parent">Update Job Posting</a> |&nbsp;	 
			<a href="<c:url value='/jsps/job_posting/job_postingdelete.jsp'/>" target="_parent">Delete  Job Posting</a>	
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
			<a href="<c:url value='/jsps/item.jsp'/>" target="body">Query Result</a> |&nbsp;&nbsp;
			<a href="<c:url value='/UserServletLogout'/>" target="_parent">Logout</a> |&nbsp; 
			<a href="<c:url value='/jsps/employer/employercreate.jsp'/>" target="_parent">Create Employer</a> |&nbsp; 
			<a href="<c:url value='/jsps/employer/employerread.jsp'/>" target="_parent">Read Employer</a> |&nbsp;
			<a href="<c:url value='/jsps/employer/employerupdate.jsp'/>" target="_parent">Update Employer</a> |&nbsp;	 
			<a href="<c:url value='/jsps/employer/employerdelete.jsp'/>" target="_parent">Delete Employer</a>	

		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

