<%-- 
    Document   : mycart
    Created on : Feb 27, 2019, 12:56:29 AM
    Author     : Mihindu Ranasinghe
--%>


<html>
<head>

	<title>My Profile</title>
<link rel="stylesheet" type="text/css" href="bootstrap.css">


	<style type="text/css">
		
		.jumbotron{
			
			background-color: lightgray;
                        margin-top:1%;
                        margin-bottom: 1%;
                          

		}
                #j2{
                   background-color: lightgray; 
                   margin-top: 0;
                   padding-left: 35%
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

   
            <div class="container">
	<div class="jumbotron">
		
                    

		<h1 align="center"><img class="glyph-icon" src="images/cart.png"/> My Cart</h1>
		<hr>
                <p id="jp" align="center">Here are the items you have purchased from our online store <br/> 
		 </div>
           
            
            
            
	
        </div>
  
	    		 

       
    
     
  


	
	
    
      <%@page import="java.sql.*"%>
       <%! String id,pw;Connection cn ;Statement st,stt; ResultSet rs,rss ;
        %>
        
         <table border="2" align="center" bgcolor="68FF38">
               <thread>
                   <th>Your Purchased item code</th>
                   <th>Size</th>
                   <th>Quantity</th>
<!--                   <th>Purchased Date</th>
                   <th>Purchased Time</th>-->
                   <th>Total Bill</th>
                   <th>Payment Status</th>
                   
               </thread>
             
             <% 
             id=request.getParameter("txtid");
             pw=request.getParameter("txtPw");
             
             try{     
             Class.forName("com.mysql.jdbc.Driver");
             String dbpath="jdbc:mysql://localhost:3308/shoppingonline";
             cn=DriverManager.getConnection(dbpath,"root","");
             stt=cn.createStatement();
              st=cn.createStatement();
             rs=st.executeQuery("select * from customers");
             String tblid,tblpw,tblitemcode,tblsize,tblqty,tblbill,tblpaymetstatus;
             while(rs.next())
             {
                 tblid=rs.getString(1);
                 tblpw=rs.getString(3);
                 
                 if(id.equals(tblid))
                 {
                     if(pw.equals(tblpw))
                     {
                        rss=stt.executeQuery("select * from orders where customerID='"+id+"'");
                                      while(rss.next())
                                            {
                                               
                                                tblitemcode=rss.getString(1);
                                                tblsize=rss.getString(2);
                                                tblqty=rss.getString(3);
                                                tblbill=rss.getString(4);
                                                tblpaymetstatus=rss.getString(7);
                                                %>
          
                                    
                                                
            <tr>
                <td><h4><%out.println(rss.getString(1));%></h4></td>
                 <td><h4><%out.println(rss.getString(2));%></h4></td>
                 <td><h4><%out.println(rss.getString(3));%></h4></td>
                 <td><h4><%out.println(rss.getString(4));%></h4></td>
               <td><h4><%out.println(rss.getString(7));%></h4></td>
              
               
                
            </tr>
             <%
                                                
            
                                               
                    
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
