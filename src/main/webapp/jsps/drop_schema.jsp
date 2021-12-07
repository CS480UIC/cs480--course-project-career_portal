<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
<html>
   <head>
      <title>Size Above 500 Operation</title>
   </head>

   <body>
      <sql:setDataSource var = "size_above_500" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/career_portal"
         user = "root"  password = "Chicago@2021"/>
 
      <sql:query dataSource = "${size_above_500}" var = "result">
         SELECT * FROM career_portal.size_above_500;
      </sql:query>
 
      <table border = "1" width = "100%">
         <tr>
            <th>Count of companies above size 500</th>
         </tr>
         
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
               <td><c:out value = "${row}"/></td>
               
             
            </tr>
         </c:forEach>
      </table>
 
   </body>
</html>
