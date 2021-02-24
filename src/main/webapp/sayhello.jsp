<%-- 
    Document   : sayhello
    Created on : 08/02/2021, 23:08:15
    Author     : viter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SayHello.jsp</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
              <h1 class="display-5">Bem vindo!</h1>
              <p class="lead">
                  <jsp:useBean id="myBean" class="hello.MessageBean"/>
                    <% String lang = request.getParameter("lang"); %>
                    <jsp:setProperty name="myBean" property="msg" value="<%=lang%>"/>
                    <jsp:getProperty name="myBean" property="msg"/>, <%=request.getParameter("nome")%>!
              </p>
              <p>by SayHello.jsp</p>
            </div>
          </div>
        
        
    </body>
</html>
