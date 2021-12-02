<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>employees Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "employer_view" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/career_portal"
         user = "root"  password = "Chicago@2021"/>
 
      <sql:query dataSource = "${employer_view}" var = "result">
         SELECT * FROM career_portal.employer_view;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>employer_id</th>
            <th>employer_name</th>
         
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.employer_id}"/></td>
               <td><c:out value = "${row.employer_name}"/></td>
           
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
