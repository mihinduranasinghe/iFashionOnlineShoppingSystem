<%-- 
    Document   : myprofilepreview
    Created on : Feb 27, 2019, 3:19:52 PM
    Author     : Mihindu Ranasinghe
--%>



<html>
<head>

	<title>My Profile preview</title>
<link rel="stylesheet" type="text/css" href="bootstrap.css">


	<style type="text/css">
		
		.jumbotron{
			
			background-color: lightgray;
                        margin-top:2%;
                        margin-bottom: 0;
                          

		}
                #j2{
                   background-color: lightgray; 
                   margin-top: 0;
                   margin-bottom: 4%;
                   padding-top: 15px;
                   padding-left:40%; 
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
		
                    

		<h1 align="center"><img class="glyph-icon" src="images/user.png"/> My Profile</h1>
		<hr>
                <p id="jp" align="center">Here are the  details.<br> You have submitted in our database..<br> You can resubmit/change your details, and also reset your password. <br/> 
        </div>
                 
            
            
         

    
      <%@page import="java.sql.*"%>
       <%! String id,pw;Connection cn ;Statement st,stt; ResultSet rs,rss ;
        %>
        
         
             
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
             String tblid,tblpw,tblname,tblgender,tbladdress,tbldob,tblcontact;
             while(rs.next())
             {
                 tblid=rs.getString(1);
                 tblpw=rs.getString(3);
                 
                 if(id.equals(tblid))
                 {
                     if(pw.equals(tblpw))
                     {
                        rss=stt.executeQuery("select * from customers where customerID='"+id+"'");
                                      while(rss.next())
                                            {
                                               
                                                tblid=rss.getString(1);
                                                tblname=rss.getString(5);
                                                tblgender=rss.getString(6);
                                                tbladdress=rss.getString(7);
                                                tbldob=rss.getString(9);
                                                tblcontact=rss.getString(8);
                                                
                                                %>
             <h4 align="center"><font color="FCFAFA">Your ID ID&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%out.println(rss.getString(1));%></font></h4>
                 <h4 align="center"><font color="FCFAFA">Your Full Name&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;<%out.println(rss.getString(5));%></font></h4>
                <h4 align="center"><font color="FCFAFA">Your Date Of Birth&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%out.println(rss.getString(9));%></font></h4>
                 <h4 align="center"><font color="FCFAFA">Your Contact No&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%out.println(rss.getString(8));%></font></h4>
               <h4 align="center"><font color="FCFAFA">Your Delivery Address&nbsp;&nbsp;&nbsp;&nbsp;-&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%out.println(rss.getString(7));%></font></h4>
              
            
            <%
                                 
            
                                               
                    
                 }
                 
                 
             }
             
          }
          
         }

                   rss.close();
rs.close();

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
