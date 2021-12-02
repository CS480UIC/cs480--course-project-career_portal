<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>location_not_seattle Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "location_not_seattle" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/career_portal"
         user = "root"  password = "Chicago@2021"/>
 
      <sql:query dataSource = "${location_not_seattle}" var = "result">
         SELECT * FROM career_portal.location_not_seattle;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>job_id</th>
            <th>title</th>
            <th>employer_id</th>
            <th>job_location</th>
            <th>job_description</th>
            <th>application_deadline</th>
            <th>posting_date</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.job_id}"/></td>
               <td><c:out value = "${row.title}"/></td>
               <td><c:out value = "${row.employer_id}"/></td>
               <td><c:out value = "${row.job_location}"/></td>
               <td><c:out value = "${row.job_description}"/></td>
               <td><c:out value = "${row.application_deadline}"/></td>
               <td><c:out value = "${row.posting_date}"/></td>
             
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
