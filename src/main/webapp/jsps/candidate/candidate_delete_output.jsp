<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>Delete Entity</title>
    
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
  <<h1>Delete Entity</h1>
<p style="color: red; font-weight: 900">${msg }</p>
<form action="<c:url value='/CandidateServletDelete'/>" method="post">
    <input type="hidden" name="method" value="delete"/>
        <input type="hidden" name="candidate_id" value="${candidate.candidate_id }"/>
    candidate_id    :<input type="text" name="candidate_id" value="${candidate.candidate_id }" disabled/>
    <br/>
    first_name    :<input type="text" name="first_name" value="${candidate.first_name }" disabled/>
    <br/>
    last_name    :<input type="text" name="last_name" value="${candidate.last_name }" disabled/>
    <br/>
    email_id    :<input type="text" name="email_id" value="${candidate.email_id }" disabled/>
    <br/>
    phone_no    :<input type="text" name="phone_no" value="${candidate.phone_no }" disabled/>
    <br/>
    experience_year    :<input type="text" name="experience_year" value="${candidate.experience_year }" disabled/>
    <br/>
    skill    :<input type="text" name="skill" value="${candidate.skill }" disabled/>
    <br/>
    sustainability_interest    :<input type="text" name="sustainability_interest" value="${employer.sustainability_interest }" disabled/>
    <br/>
    <input type="submit" value="Delete Candidate"/>
</form>

</body>
</html>