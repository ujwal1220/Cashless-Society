<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Bank Account Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<style type="text/css">
<!--
.style1 {color: #FFFF00}
.style2 {
	font-size: 36px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color:#FF3300}
.style4 {color: #660000}
.style5 {color: #000000}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1 class="style1"><a href="index.html" class="style1"> Cashless Society Managing Privacy and Security in the Technological Age</a></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li class="active"><a href="index.html">Home</a></li>
          <li><a href="AdminLogin.jsp">Bank Admin</a></li>
          <li><a href="EcommerceLogin.jsp">E-Commerce</a></li>
          <li><a href="UserLogin.jsp">User</a></li></ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
		<h2 class="style10 style14"><span class="style4">Adding Money To User</span> <span class="style3"><%=(String)application.getAttribute("uname")%></span><span class="style4">'s Bank Account..</span></h2>
          <div class="clr"></div>
		  <p>&nbsp;</p>
          <div>
                    <%
		  	String user=(String)application.getAttribute("uname");
			String accno="";
		    String sql="SELECT acc_no FROM userbankaccount where user='"+user+"'";
			Statement stmt = connection.createStatement();
			ResultSet rs =stmt.executeQuery(sql);
			if(rs.next()==true)
			{
			
			
					accno=rs.getString(1);
					
			}
		  
		  
		  
		  %>
                    <form action="AddMoneyAuthentication.jsp" method="post" >
                      <span class="style48">
                      <label for="name"><span class="style49 style5">Bank Account Number (required)</span></label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="accno" value="<%=accno%>" readonly/>
                      </p>
                      <span class="style50">
                      <label for="amount"><span class="style5">Amount (required)</span></label>
                      </span>
                      <p class="style50">
                        <input type="text"  name="amount" class="text" />
                      </p>
                      <span class="style50">
                      <label for="email"></label>
                      </span>
                      <p class="style48"><br />
                          <input name="submit" type="submit" value="Add Money" />
                      </p>
                      
		<p align="left" class="style22"><a href="U_ManageBankAccount.jsp" class="style11">Back</a></p>
                    </form>
	              </div>
          </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="UserMain.jsp">Home</a></li>
            <li><a href="UserLogin.jsp">Logout </a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg">
    <div class="fbg_resize">
      <div class="clr style2">Cashless Society Managing Privacy and Security in the Technological Age</div>
    </div>
  </div>
  <div class="footer">
    <div class="footer_resize"></div>
  </div>
</div>
</body>
</html>
