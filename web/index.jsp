<%-- 
    Document   : index
    Created on : 2018-09-09, 19:21:39
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
                <h1>Hello World!</h1>
                <form>
			<fieldset>
				<legend>GET</legend>	
				First name:<br>
				<input type="text" name="firstname" required><br>
				Last name:<br>
				<input type="text" name="lastname" required><br>
				<input type="submit" value="Query">
			</fieldset>          
		</form>
                <%
                    //  Getting Started http://www.ntu.edu.sg/home/ehchua/programming/java/JSPByExample.html
                 String firstName = request.getParameter("firstname");
                 String lastName = request.getParameter("lastname");
                 if(firstName != null && lastName != null) {
                     out.print("First name:" + firstName);
                     out.print("Last name:" + lastName);
                %>
                <a href="<%= request.getRequestURI() %>">BACK</a>
                <%
                    }
                %>  
                
                 <form method="post" action="P1.jsp">
			<fieldset>
				<legend>POST</legend>	
				First name:<br>
				<input type="text" name="firstname" required><br>
				Last name:<br>
				<input type="text" name="lastname" required><br>
				<input type="submit" value="Submit">
			</fieldset>          
		</form>
                <form method="post" action="P2.jsp">
                       <fieldset>
				<legend>BD</legend>	
				<input type="submit" value="Submit">
                       </fieldset>
                </form>          
        </body>
</html>
