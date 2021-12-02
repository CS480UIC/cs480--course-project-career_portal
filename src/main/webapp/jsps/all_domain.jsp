<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>all_domain Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "all_domain" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/career_portal"
         user = "root"  password = "Chicago@2021"/>
 
      <sql:query dataSource = "${all_domain}" var = "result">
         SELECT * FROM career_portal.all_domain;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Domain ID</th>
            <th>Name</th>
            <th>Description</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row.domain_id}"/></td>
               <td><c:out value = "${row.name}"/></td>
               <td><c:out value = "${row.description}"/></td>
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
