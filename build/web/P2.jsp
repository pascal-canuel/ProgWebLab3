<%-- 
    Document   : P2
    Created on : 2018-09-09, 20:25:52
    Author     : Pascal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
        <head>
                <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>JSP Page</title>
        </head>
        <body>
               <%@ page import = "java.sql.*" %>
               <%@ page import = "java.util.logging.Logger" %>
               <%@ page import = "java.util.logging.Level" %>
               <%
                   Connection connection;
                   PreparedStatement pst;
                   ResultSet rs;  
                   
                   // Load the JDBC driver      
                   Class.forName("com.mysql.jdbc.Driver").newInstance(); 
                   
                   String serverName = "localhost";      
                   String mydatabase = "lab2";      
                   String url = "jdbc:mysql://" + serverName + "/" + mydatabase; // a JDBC url      
                   String username = "root";      
                   String password = "";     
                   connection = DriverManager.getConnection(url, username, password); 
                 
                   pst = connection.prepareCall("SELECT * FROM Pourse");
                   rs = pst.executeQuery();
               %>
                <table border=1 cellpadding=5>
                <tr>
                  <th>idPourse</th>
                  <th>nomPourse</th>
                  <th>agePourse</th>
                  <th>dateNaissancePourse</th>
                  <th>prixPourse</th>
                </tr>
                <%
                    while (rs.next()) {    
                %>
                <tr>
                    <td><%= rs.getString("idPourse") %></td>
                    <td><%= rs.getString("nomPourse") %></td>
                    <td><%= rs.getString("agePourse") %></td>
                    <td>$<%= rs.getInt("dateNaissancePourse") %></td>
                    <td><%= rs.getInt("prixPourse") %></td>
                </tr>
                <%
                    }
                %>
                </table>
                <br>
                <a href="<%= request.getHeader("Referer") %>"><h3>Back</h3></a>
                <%
                      rs.close();
                      pst.close();
                      connection.close();
                    }
                %>
        
        </body>
</html>
