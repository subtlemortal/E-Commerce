<%-- 
    Document   : loginInfo
    Created on : 13 May 2024, 19:42:01
    Author     : shantanuunde
--%>
<%@ page import="com.mycompany.cosd.User" %>
<%@ page import="com.mycompany.cosd.Utility" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<body>    
   
<%
    // Extract User object from request parameters
    User usr = (User) Utility.extractObjectFromRequest(User.class, request);
%>

<p>User ID: <%= usr.getUsername()%></p>
<p>Password: <%= usr.getPassword()%></p>

</body>
