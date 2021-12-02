<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>candidate_status Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "candidate_status" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/career_portal"
         user = "root"  password = "Chicago@2021"/>
 
      <sql:query dataSource = "${candidate_status}" var = "result">
         SELECT * FROM career_portal.candidate_status;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Candidate ID</th>
            <th>first_name</th>
            <th>last_name</th>
            <th>email_id</th>
            <th>phone_no</th>
            <th>experience_year</th>
            <th>skill</th>
            <th>sustainability_interest</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.candidate_id}"/></td>
               <td><c:out value = "${row.first_name}"/></td>
               <td><c:out value = "${row.last_name}"/></td>
               <td><c:out value = "${row.email_id}"/></td>
               <td><c:out value = "${row.phone_no}"/></td>
               <td><c:out value = "${row.experience_year}"/></td>
               <td><c:out value = "${row.skill}"/></td>
               <td><c:out value = "${row.sustainability_interest}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
