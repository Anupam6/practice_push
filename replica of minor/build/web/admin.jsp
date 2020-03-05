<%-- 
    Document   : admin
    Created on : Apr 1, 2019, 7:26:00 PM
    Author     : asus
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="util.SqlUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" type="text/css" media="all" href="css/view.css">
          <style>
              input
              {
                  border-radius: 50px;
                  height: 100px;
                  background-color: violet;
              }
              .c1
              {
                  width: 400px;
                 border-radius: 50px;
                  height: 100px;
                  background-color: violet;
                  font-size: 30px;
                  
              }
          </style>
    </head>
    <body>
        <%
          //for preventaion from unauthorized user
       
           HttpSession sessi=request.getSession();
            response.setHeader("cache-control","no-cache,no-store,must-revalidate");//http 1.1
            response.setHeader("pragma","no-cache");//http 1.0
            response.setHeader("expires","0");//proxies
           
            if(sessi.getAttribute("unm")==null)
            {
               response.sendRedirect("login.html");
            }  
      
         %>
    <h1 style="text-align: center;font-size: 60px;color: greenyellow; 
        background-color: orchid">LOGIN AS ADMIN</h1>
        
     <form action="logout"><input type="submit" style="width: 100px;
           height:40px;font-size: 20px;  float: right;" value="Logout"> </form><br> 
       
           <form action="add_question.jsp"><input type="submit" class="c1" name="view_all_std" value="add question on test link"></form><br>
    
           <form action="view.jsp"><input type="submit" class="c1" value="View All students"> </form><br>
           
      
    <form action="display_all_result.jsp"><input type="submit" class="c1" name="result" value="display_all_result"> </form><br>
           
    </body>
</html>
