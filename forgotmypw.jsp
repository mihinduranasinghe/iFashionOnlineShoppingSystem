<%-- 
    Document   : forgotmypw
    Created on : Feb 22, 2019, 6:24:43 PM
    Author     : Mihindu Ranasinghe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="bootstrap.css">

    <link rel="stylesheet" type="text/css" href="landingpage.css">
    <link href="https://fonts.googleapis.com/css?family=Staatliches" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    </head>
    <body>
        
 <nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">


    <div class="container">
        <a class="navbar-brand" href="#">iFASHION</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
               
                <li class="nav-item">
                    <a class="nav-link" href="aboutus2.html">About us</a>
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
        <!--     <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form> -->
    </div>
</nav>       
<div class="row">
    <div class="col-lg-12">
        <div class="container" id="content">
          <h1 align="center"><font color="43F505">Your Password Reset Fail<br></font></h1>
          <h4 align="center"><font color="F9F9F9">Please make sure you entered <br>your security answer correctly.<br><b>Your id and security answer is not matching together or<br> make sure you have entered same new password for confirm new password section</b></font></h4>
        

        </div>
    </div>

</div>


        <%@page import="java.sql.*"%>
        <%! String username,pwd,cpwd,sq,cid; Connection cn ;Statement st,stt; ResultSet rs;
        %>
        <%
             
             cid=request.getParameter("txtid");
             
             username=request.getParameter("txtUName");
             
             pwd=request.getParameter("txtPw");
             cpwd=request.getParameter("txtcPw");
             sq=request.getParameter("txtsq");
             
           
            
             
           try{
			Class.forName("com.mysql.jdbc.Driver");
			String dbpath="jdbc:mysql://localhost:3308/shoppingonline";
			cn=DriverManager.getConnection(dbpath,"root","");
			st=cn.createStatement();
                       // stt=cn.createStatement();
             
            rs=st.executeQuery("select * from customers");
             String tblid,tblsq ;
             while(rs.next())
             {
                 tblid=rs.getString(1);
                 tblsq=rs.getString(4);
                 
                 if(cid.equals(tblid))
                 {
                     if(sq.equals(tblsq))
                     {              
                                            if(pwd.equals(cpwd))
                                             {
                                              st.executeUpdate("update customers set password='"+pwd+"' where customerID='"+cid+"'");
                                             response.sendRedirect("forgetpwresetdone.html");
    
                                                   
                                             }
                                            
                                             
                          
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
