<%-- 
    Document   : login
    Created on : 28 May 2024, 17:19:04
    Author     : shantanuunde
--%>

<!DOCTYPE html>
<html>
    <body>
        <%@include file="visitorNavigation.jsp" %>
        <h1>Login</h1>
        <form action="loginLogic.jsp" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username"><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password"><br>
            <button type="submit">Login</button>
        </form>S
    </body>
</html>

