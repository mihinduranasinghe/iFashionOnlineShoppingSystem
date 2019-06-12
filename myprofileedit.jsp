<%-- 
    Document   : myprofileedit
    Created on : Feb 27, 2019, 2:23:28 AM
    Author     : Mihindu Ranasinghe
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>profile edit</title>
    <link rel="stylesheet" type="text/css" href="bootstrap.css">
<link rel="stylesheet" type="text/css" href="landingpage.css">
    <link href="https://fonts.googleapis.com/css?family=Staatliches" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.1/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

    	<style type="text/css">
		
		.jumbotron{
			
			background-color: lightgray;
                        margin-top:2%;
                        margin-bottom: 0;
                          

		}
                #j2{
                   background-color: lightgray; 
                   margin-top: 0;
                   margin-bottom: 4%
                }
		


	hr { 
    display: block;
   margin-left: auto;
   margin-right: auto;
   widows: 50%;
    overflow: hidden;
    border-style: inset;
    border-width: 1px;
    border-color: #000;
}
body{
    background: url("bg.jpg");
    background-size: cover;
}



	</style>

</head>
<body>
<nav class="navbar sticky-top navbar-expand-lg navbar-light bg-light">


    <div class="container">
        <a class="navbar-brand" href="shoppingwall.html">iFASHION</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                
                <li class="nav-item">
                    <a class="nav-link" href="aboutus.html">About us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="aboutus.html">Offers</a>
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
                    <a class="nav-link" href="myprofile.html"><i class="fas fa-user-plus"></i> Manage My Profile <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="asklogout.html"><i class="fas fa-users"></i> Log Out <span class="sr-only">(current)</span></a>
                </li>

            </ul>
        </div>
        <!--     <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form> -->
    </div>
</nav>







       
        <%@page import="java.sql.*"%>
        <%! String id,fullname,dob,gender,deladdress,pw; int contactnum; Connection cn ;Statement st; ResultSet rs; 
        %>
        <%
             id=request.getParameter("id");
              fullname=request.getParameter("name");
             
             dob=request.getParameter("dob");
             gender=request.getParameter("gender");
             deladdress=request.getParameter("adrs");
             pw=request.getParameter("pw");
           contactnum=Integer.parseInt(request.getParameter("tp"));
            
             
           try{
			Class.forName("com.mysql.jdbc.Driver");
			String dbpath="jdbc:mysql://localhost:3308/shoppingonline";
			cn=DriverManager.getConnection(dbpath,"root","");
			st=cn.createStatement();
             rs=st.executeQuery("select * from customers");
             String tblid,tblpw;
             while(rs.next())
             {
                 tblid=rs.getString(1);
                 tblpw=rs.getString(3);
                 
                 if(id.equals(tblid))
                 {
                     if(pw.equals(tblpw))
                     {
                          st.executeUpdate("update customers set gender='"+gender+"',fullname='"+fullname+"',DOB='"+dob+"',contactnum='"+contactnum+"',delAddress='"+deladdress+"' where customerID='"+id+"'");
                        rs.close();
        %>
<div class="row">
    <div class="col-lg-12">
        <div class="container" id="content">
               
        <h1 align="center"><font color="34F505">Your Customer Profile<br> Is Successfully Updated<br></font></h1>
        
        <a href="myprofile.html"><button type="btn btn-default btn-lg" url="myprofile.html"><i class="fas fa-angle-double-right"></i>  Go to my profile... </button></a>

             
        </div>
    </div>

</div>

<%
                     }
else{
%>
<div class="row">
    <div class="col-lg-12">
        <div class="container" id="content">
               
        <h1 align="center"><font color="red">Your Customer Profile<br> Updating Fail<br></font></h1>
        <p>Please check your ID and Password again. It seems like they are not matching</p>
        
        <a href="myprofileedit.html"><button type="btn btn-default btn-lg" url="myprofileedit.html"><i class="fas fa-angle-double-right"></i>  Try Again... </button></a>

             
        </div>
    </div>

</div>
    
    <%
}
                    
                 }
                 
                 
             }
                        
                        
            
              
             
            cn.close();
             
        } 
        catch(ClassNotFoundException e)
        {
            out.println(e.getMessage());
        }
        catch(SQLException e)
        {
            //out.println(e.getMessage());
        }
             
             
            
             
             
             
             %> 
             
             
                
                
           
<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

       
    </body>
</html>
