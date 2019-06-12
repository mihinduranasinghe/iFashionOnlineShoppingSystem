<%-- 
    Document   : login
    Created on : Feb 21, 2019, 11:51:14 PM
    Author     : Mihindu Ranasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
  <head>
    <title>shopping home</title>
    <link rel="stylesheet" type="text/css" href="bootstrap.css">

    <link rel="stylesheet" type="text/css" href="landingpage.css">
    <link href="https://fonts.googleapis.com/css?family=Staatliches" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

</head>
<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">


    <div class="container">
        <a class="navbar-brand" href="index.html">iFASHION</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                
                <li class="nav-item">
                    <a class="nav-link" href="#">About us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Offers</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Category
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="#">Men</a>
                        <a class="dropdown-item" href="#">Women</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Kids</a>
                    </div>
                </li>
                
            </ul>
            <ul class="navbar-nav navbar-right">
                <li class="nav-item">
                    <a class="nav-link" href="signup.html"><i class="fas fa-user-plus"></i> Sign up <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="login.html"><i class="fas fa-users"></i> Log in <span class="sr-only">(current)</span></a>
                </li>

            </ul>
        </div>
      
    </div>
</nav>

<div class="row">
    <div class="col-lg-12">
        <div class="container" id="content">
               
            <h2 align="center"><font color="34F505" >Your Username and Password is not matching.<br> Please enter a valid username and a password<br></font></h2>
              <p align="center">
              <a href="login.html"><img src="images/back.png" alt="" width="200" height="95"/></a>
       </p>
        
             
        </div>
    </div>

</div>






         <%@page import="java.sql.*"%>
        <%!String uname,pw; Connection cn ;Statement st; ResultSet rs;
        %>
        <% 
             uname=request.getParameter("txtUName");
             pw=request.getParameter("txtPw");
             
             try{     
             Class.forName("com.mysql.jdbc.Driver");
             String dbpath="jdbc:mysql://localhost:3308/shoppingonline";
             cn=DriverManager.getConnection(dbpath,"root","");
             st=cn.createStatement();
             
             rs=st.executeQuery("select * from customers");
             String tbluname,tblpw;
             while(rs.next())
             {
                 tbluname=rs.getString(2);
                 tblpw=rs.getString(3);
                 
                 if(uname.equals(tbluname))
                 {
                     if(pw.equals(tblpw))
                     {
                         response.sendRedirect("shoppingwall.html");
                     }
                    
                 }
                 
                 
             }
             
        } 
        catch(ClassNotFoundException e)
        {
            out.println(e.getMessage());
        }
        catch(SQLException e)
        {
            out.println(e.getMessage());
        }
             %>
                       
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

    </body>
</html>
