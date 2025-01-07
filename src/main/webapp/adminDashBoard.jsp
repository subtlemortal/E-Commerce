<%-- 
    Document   : adminDashBoard
    Created on : 28 May 2024, 17:27:30
    Author     : shantanuunde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
          response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
        %>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Admin Dashboard!</h1>
        
            <li> <a href= "addProduct.jsp">Add Product </a></li>
            <li> <a href= "addProductInfo.jsp">Add Product Info </a></li>
            <li> <a href= "productDetails.jsp">Product Details </a></li>


    </body>
</html>
