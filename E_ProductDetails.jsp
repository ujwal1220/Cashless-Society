<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View Product Details</title>
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
-->
</style>
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
		<h2 class="style3">Product Details..</h2>
		</div>
		<div class="mainbar">
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <table width="950" border="1" align="center">
  <tr>
   <td width="140" height="32"><div align="center"><span class="style3" style="color:#660000"><b>Id</b> </span></div></td>
    <td width="205"><div align="center" style="color:#660000"><strong>Product Name</strong></div></td>
   <td width="140" height="32"><div align="center" style="color:#660000"><strong>Product Image</strong></div></td>
      <td width="293"><div align="center" style="color:#660000"><span class="style3"><b>Manufacture</b> </span></div></td>
	  <td width="178"><div align="center" style="color:#660000"><strong>Uses</strong></div></td>
    <td width="178"><div align="center" style="color:#660000"><strong>Description</strong></div></td>
	  <td width="205"><div align="center" style="color:#660000"><span class="style3"><b>Date</b></span></div></td>
	  <td width="205"><div align="center"><span class="style3" style="color:#660000"><b>Rank</b></span></div></td>
	  <td width="205"><div align="center"><span class="style3" style="color:#660000"><b>Price</b></span></div></td>
	  	  
  </tr>

            <%@ include file="connect.jsp" %>
            <%@ page import="java.io.*"%>
            <%@ page import="java.util.*" %>
            <%@ page import="java.util.Date" %>
            <%@ page import="com.oreilly.servlet.*"%>
            <%@ page import ="java.text.SimpleDateFormat" %>
            <%@ page import ="javax.crypto.Cipher" %>
            <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
            <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
			<%@ page import="org.bouncycastle.util.encoders.Base64"%>

<%

	String p_Name= request.getParameter("p_Name");
	String s1="",s2="",s3="",s4="",s5="",s6="",s7="",s8="",s9="",s10,s11,s12,s13;
	int i=0,j=0,k=0,r=0;

      	try 
	{
        
          
      		
      		
      		String query="select * from products where p_name='"+p_Name+"' "; 
           Statement st=connection.createStatement();
           ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	   {
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(4);
		s4=rs.getString(5);
		s5=rs.getString(6);
		s7=rs.getString(8);
		s9=rs.getString(3);
		s10=rs.getString(10);
		r=rs.getInt(9);
		s11=rs.getString(3);
		
					
		
		%>



  <tr>
      <td><div align="center" style="color:#660000"><strong><%=i%></strong></div></td>
    <td><div align="center" style="color:#2c83b0"><strong><%=s2%></strong></div></td>
    <td><div align="center">
      <input  name="image" type="image" src="user_Pic.jsp?picture=<%="product"%>&id=<%=i%>" width="100" height="100" alt="Submit">
      </input></div>
	 </td>
    <td><div align="center" style="color:#CC0066"><strong><%=s3%></strong></div></td>
	<td><div align="center" style="color:#000000"><%=s4%></div></td>
     <td><div align="center" style="color:#000000"><%=s5%></div></td>
		  	   <td><div align="center" style="color:#000000"><%=s7%></div></td>
			   <td><div align="center" style="color:#000000"><strong><%=r%></strong></div></td>
			   <td><div align="center" style="color:#000000"><strong><%=s11%></strong> Rs/-</div></td>
		  	   
  </tr>

<%
	   }
	  
           connection.close();
          }
         
          catch(Exception e)
          {
            out.println(e.getMessage());
          }
%>


</table>
		          <p>&nbsp;</p>
		          <p align="left"><a href="E_PurchasedProducts.jsp" class="style16">	Back</a></p>
		</div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Ecommerce Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
	  <li><a href="EcommerceMain.jsp"><strong>Home</strong></a></li>
	  <li><a href="EcommerceLogin.jsp"><strong>Logout</strong></a></li>
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