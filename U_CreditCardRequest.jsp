<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Credit Card Request</title>
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
		<h2 class="style10 style14"><span class="style4">User</span> <span class="style3"><%=(String)application.getAttribute("uname")%></span><span class="style4">'s Credit Card Request..</span></h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
		<%
						
						String user=(String )application.getAttribute("uname");
						String bank=(String )application.getAttribute("ubank");
						
						String s1,s2,s3,s4,s5;
						
						 
						try 
						{
						   	String query="select * from user where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								
								
								s1=rs.getString(7);
								
								
								
								
					%>
            <form action="U_CreditCardRequest1.jsp" method="post" id="" enctype="multipart/form-data">
  <label for="name"><span class="style43 style5">Bank Name (required)</span></label>
  <p class="style43">
    <input id="bank" name="bank" value="<%=bank%>" readonly />
  </p>
  <span class="style43">
  <label for="bank"><span class="style5">Account Name(required)</span></label>
  </span>
  <p class="style43">
    <input id="aname" name="aname" value="<%=user%>" readonly />
  </p>
  <p class="style9">
    <span class="style42 style5">
    <label for="amount">Nick Name (required)</label>
    </span> </p>
  <p class="style9">
    <input id="ncname" name="ncname" class="text" />
  </p>
  <span class="style43">
  <label for="address"><span class="style5">Address</span></label>
  </span>
  <p class="style43">
     <input id="address" name="address" value="<%=s1%>" readonly />
  </p>
  <p class="style9">
    <span class="style42 style5">
    <label for="amount">Credit Limit (required)</label>
    </span> </p>
  <p class="style9">
    <input id="crlimit" name="crlimit" class="text" />
  </p>
  <p class="style9">
    <span class="style42 style5">
    <label for="amount">Cash Limit (required)</label>
    </span> </p>
  <p class="style9">
    <input id="cslimit" name="cslimit" class="text" />
  </p>
  <p align="left" class="style9"><br />
      <input name="submit" type="submit" value="Send Request" />
  </p>
  </form>
  <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
					<p class="style19">&nbsp;</p>
				  <p><a href="UserMain.jsp" class="style16">Back</a></p>
				  
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