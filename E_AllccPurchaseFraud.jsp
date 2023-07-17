<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
            <%@ page import="java.util.*"%>
            <%@ page import="java.text.*"%>
            <%@ page import="java.util.Date"%>
            <%@ page import="java.sql.*"%>
            <%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
            <%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
            <%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce Fraud Users</title>
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
.style3 {color: #660000}
.style4 {color: #000000;
		 font-size: 14px}
.style6 {color: #FF9900;
		font-size: 18px}
.style7 {
	color:#003333;
	font-size: 16px;
	font-weight: bold;
}
.style9 {font-size: 16px}
.style10 {font-size: 16px; color: #660000; font-weight: bold; }
.style11 {
	font-size: 22px;
	color: #660000;
}
.style13 {
	font-size: 16px;
	color: #CC0033;
	font-weight: bold;
}
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
          <li><a href="UserLogin.jsp">User</a></li
          
        ></ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
          <h2 class="style3">All Normal and Abnormal Users</h2>
	  
	  	    
  	      <p>
	  	      <%
	String s11="",s12="",s0="",s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10="";
	int i=0,j=0,count=0,rank=0,k=0;
	try
	{
			String site=(String)application.getAttribute("esite");
			String sql3="select distinct activity from purchase_fraud";
			Statement st3=connection.createStatement();
			  ResultSet rs3=st3.executeQuery(sql3);
			while ( rs3.next() )
			   {
			   s11=rs3.getString(1);
			   
			  
			 
			%>
            </p>
			
	  	    <table width="572" border="1">
				  <tr bgcolor="#FFFFFF">
				    <td colspan="8" ><h2 class="style6" style="color:#FF0000" ><span class="style11">Activity :</span> 
				      <%out.println(s11);%> 
                     </h2></td>
			      </tr>
				 
                      <td  width="40"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style2 style3 style9">ID</div></td>
                      <td  width="105" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">User  Name</div></td>
                      <td  width="109" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">Amount</div></td>
					  <td  width="104" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">Activity</div></td>
                      <td  width="74"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style10">Date</div></td>
                    </tr>
				 
				  <%
					  
					  	
						   	String query="select * from purchase_fraud where site='"+site+"' and activity='"+s11+"' "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString(7);
												
						
							
						
						count++;
			   
					 %>
							   <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3"><span class="style3">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s1);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s2);%>
                            </span></div></td>
       				  <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style4">
                            <strong><%out.println(s3);%></strong>                            </span></div></td>
 					 <td height="0" align="center"  valign="middle"><div align="center" class="style3">
                            <span class="style3">
                            <%out.println(s4);%>
                            </span></div></td>
              </tr>
					
	     <%
					 }
			
			       %></table> 				   
	 				   
	<p>&nbsp;</p>
				<%
			}
         connection.close();
		 }
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
	%></table><p>&nbsp;</p>
					
					
        	
		<p align="left"><a href="EcommerceMain.jsp" class="style95">Back</a></p>
	
	
	</div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Ecommerce Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="EcommerceMain.jsp">Home</a></li>
            <li><a href="EcommerceLogin.jsp">Logout</a></li>
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
