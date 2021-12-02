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
<%-- 			<a href="<c:url value='/jsps/en<!--  -->tity1/entity1create.jsp'/>" target="_parent">Entity 1</a> |&nbsp; 
 --%>		<a href="<c:url value='/jsps/user/login.jsp'/>" target="_parent">Login</a> |&nbsp; 
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
			<a href="<c:url value='/jsps/domain/domaincreate.jsp'/>" target="_parent">Create Domain</a> |&nbsp; 
			<a href="<c:url value='/jsps/domain/domainread.jsp'/>" target="_parent">Read Domain</a> |&nbsp;
			<a href="<c:url value='/jsps/domain/domainupdate.jsp'/>" target="_parent">Update Domain</a> |&nbsp;	 
			<a href="<c:url value='/jsps/domain/domaindelete.jsp'/>" target="_parent">Delete Domain</a>	
			<a href="<c:url value='/jsps/application/applicationcreate.jsp'/>" target="_parent">Create Application</a> |&nbsp; 
			<a href="<c:url value='/jsps/application/applicationread.jsp'/>" target="_parent">Read Application</a> |&nbsp;
			<a href="<c:url value='/jsps/application/applicationupdate.jsp'/>" target="_parent">Update Application</a> |&nbsp;	 
			<a href="<c:url value='/jsps/application/applicationdelete.jsp'/>" target="_parent">Delete Application</a>
			<a href="<c:url value='/jsps/interview_review/interview_reviewcreate.jsp'/>" target="_parent">Create Interview</a> |&nbsp; 
			<a href="<c:url value='/jsps/interview_review/interview_reviewread.jsp'/>" target="_parent">Read Interview</a> |&nbsp;
			<a href="<c:url value='/jsps/interview_review/interview_reviewupdate.jsp'/>" target="_parent">Update Interview</a> |&nbsp;	 
			<a href="<c:url value='/jsps/interview_review/interview_reviewdelete.jsp'/>" target="_parent">Delete Interview</a>	
			<a href="<c:url value='/jsps/initialize_db.jsp'/>" target="_parent">Initialize Database</a>
			
		</c:when>
		<c:otherwise>
			Hello：${sessionScope.session_user.username };
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
			<a href="<c:url value='/jsps/domain/domaincreate.jsp'/>" target="_parent">Create Domain</a> |&nbsp; 
			<a href="<c:url value='/jsps/domain/domainread.jsp'/>" target="_parent">Read Domain</a> |&nbsp;
			<a href="<c:url value='/jsps/domain/domainupdate.jsp'/>" target="_parent">Update Domain</a> |&nbsp;	 
			<a href="<c:url value='/jsps/domain/domaindelete.jsp'/>" target="_parent">Delete Domain</a>	
			<a href="<c:url value='/jsps/application/applicationcreate.jsp'/>" target="_parent">Create Application</a> |&nbsp; 
			<a href="<c:url value='/jsps/application/applicationread.jsp'/>" target="_parent">Read Application</a> |&nbsp;
			<a href="<c:url value='/jsps/application/applicationupdate.jsp'/>" target="_parent">Update Application</a> |&nbsp;	 
			<a href="<c:url value='/jsps/application/applicationdelete.jsp'/>" target="_parent">Delete Application</a>
			<a href="<c:url value='/jsps/interview_review/interview_reviewcreate.jsp'/>" target="_parent">Create Interview</a> |&nbsp; 
			<a href="<c:url value='/jsps/interview_review/interview_reviewread.jsp'/>" target="_parent">Read Interview</a> |&nbsp;
			<a href="<c:url value='/jsps/interview_review/interview_reviewupdate.jsp'/>" target="_parent">Update Interview</a> |&nbsp;	 
			<a href="<c:url value='/jsps/interview_review/interview_reviewdelete.jsp'/>" target="_parent">Delete Interview</a>	
			<a href="<c:url value='/jsps/initialize_db.jsp'/>" target="_parent">Initialize Database</a>

		</c:otherwise>
	</c:choose>

</div>
  </body>
</html>

