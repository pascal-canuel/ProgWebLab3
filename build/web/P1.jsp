<%-- 
    Document   : P1
    Created on : 2018-09-09, 20:05:13
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
                <%              
                 String firstName = request.getParameter("firstname");
                 String lastName = request.getParameter("lastname");
                 if(firstName != null && lastName != null) {
                     out.print("First name:" + firstName);
                     out.print("Last name:" + lastName);
                %>
                <a href="<%= request.getHeader("Referer") %>">BACK</a>
                <%
                    }
                %>  
        </body>
</html>
