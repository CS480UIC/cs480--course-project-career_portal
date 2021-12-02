<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>earliest_deadline Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "job_applications" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/career_portal"
         user = "root"  password = "Chicago@2021"/>
 
      <sql:query dataSource = "${job_applications}" var = "result">
         SELECT * FROM career_portal.job_applications;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>job_id</th>
            <th>title</th>
            <th>job_location</th>
            <th>application_status</th>
            
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.job_id}"/></td>
               <td><c:out value = "${row.title}"/></td>
               <td><c:out value = "${row.job_location}"/></td>
               <td><c:out value = "${row.application_status}"/></td>
             
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
