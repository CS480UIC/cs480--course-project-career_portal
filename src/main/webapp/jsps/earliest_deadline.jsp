<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>earliest_deadline Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "earliest_deadline" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/career_portal"
         user = "root"  password = "Chicago@2021"/>
 
      <sql:query dataSource = "${earliest_deadline}" var = "result">
         SELECT * FROM career_portal.earliest_deadline;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Earliest Deadline</th>
            
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row}"/></td>
             
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
