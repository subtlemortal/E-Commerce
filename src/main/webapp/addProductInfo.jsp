<%-- 
    Document   : addProductInfo
    Created on : 13 May 2024, 19:55:40
    Author     : shantanuunde
--%>

<%@ page import="com.mycompany.cosd.AddProduct" %>
<%@ page import="com.mycompany.cosd.Utility" %>
<%@ page import="jakarta.servlet.http.HttpServletRequest" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<body>    
   
<%
    // Extract User object from request parameters
    AddProduct addProduct = (AddProduct) Utility.extractObjectFromRequest(AddProduct.class, request);
%>

<p>Name : <%= addProduct.getName()%></p>
<p>Description : <%= addProduct.getDescription()%></p>
<p>Price : <%= addProduct.getPrice()%></p>
<p>Category : <%= addProduct.getCategory()%></p>

</body>
