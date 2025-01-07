<%-- 
    Document   : registrationInfo
    Created on : 13 May 2024, 20:24:44
    Author     : shantanuunde
--%>

<%@ page import="com.mycompany.cosd.Register" %>
<%@ page import="com.mycompany.cosd.Utility" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>    
   
<%
    // Extract User object from request parameters
    Register register = (Register) Utility.extractObjectFromRequest(Register.class, request);
%>

<p>User Name : <%= register.getUsername()%></p>
<p>Email : <%= register.getEmail()%></p>
<p>Password : <%= register.getPassword()%></p>

</body>
