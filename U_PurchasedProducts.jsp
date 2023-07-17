<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
                    <%@ page import="java.io.*"%>
                    <%@ page import="java.util.*" %>
                    <%@ page import="java.util.Date" %>
                    <%@ page import="com.oreilly.servlet.*"%>
                    <%@ page import ="java.text.SimpleDateFormat" %>
                    <%@ page import ="javax.crypto.Cipher" %>
                    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
                    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
                    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Purchased Products</title>
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
.style4 {color: #660000}
.style6 {font-size: 24px; }
.style8 {color: #000000;}
.style9 {
	color: #FF6600;
	font-weight: bold;
}
.style41 {color: #660000;
		font-weight: bold;}
.style81 { color:#006666}
.style82 { color:#CC0066}
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
          <h2 class="style4">User <span class="style6" style="color:#FF6600"><%=(String)application.getAttribute("uname")%> </span>'s Purchased Products..</a></h2>
		  </div>
	    <div class="mainbar">
          <div class="clr"></div>
          
          
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="730" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="60"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style13 style4"><strong>Si No. </strong></div></td>
					  <td  width="100"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style13 style4"><strong>Product Image</strong></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13 style4"><strong>Product Name</strong></div></td>
                      <td  width="133" valign="middle" style="color: #2c83b0;"><div align="center" class="style13 style4"><strong>Manufactured By</strong></div></td>
                      <td  width="106" valign="middle" style="color: #2c83b0;"><div align="center" class="style13 style4"><strong>Price</strong></div></td>
					  
                      <td  width="108" valign="middle" style="color: #2c83b0;"><div align="center" class="style13 style4"><strong>Date</strong></div></td>
                    </tr>
                    
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,user1="";
						int i=0,j=1,total1=0;
						try 
						{
					
							String user=(String)application.getAttribute("uname");
						   	String query="select *  from purchase where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
									
									s2=rs.getString(4);
									s3=rs.getString(5);
									s4=rs.getString(7);
									s5=rs.getString(6);
									s7=rs.getString(8);
									s9=rs.getString(3);
										
							String query1="select id from products where p_name='"+s2+"'"; 
						   	Statement st1=connection.createStatement();
						   	ResultSet rs1=st1.executeQuery(query1);
					   		while ( rs1.next() )
					   		{
									
									i=rs1.getInt(1);
							}		
											
												%>
                    <tr>
                      <td height="172" align="center"  valign="middle"><div align="center" class="style8"><strong>
                          <%out.println(j);%>
                      </strong></div></td>
					  
                      <td><div align="center">
                        <input  name="image" type="image" src="user_Pic.jsp?picture=<%="product"%>&id=<%=i%>" width="100" height="100" alt="Submit">
    					  </input></div></td>
                      <td align="center"  valign="middle"><div align="center" class="style81">
					  <a href="U_ProductDetails.jsp?p_Name=<%=s2%>">
                        <strong><%out.println(s2);%></strong></a>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style82">
                        <strong><%out.println(s3);%></strong>
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                        <strong><%out.println(s4);%></strong>Rs/-
                      </div></td>
                      <td align="center"  valign="middle"><div align="center" class="style8">
                          <%out.println(s5);%>
                      </div></td>
                    </tr>
                    <%
												j+=1;	
						 int total=Integer.parseInt(s4);
						   total1=total1+total;
						 
						
							}
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
			      
			      <div align="left" class="style41">
			        <p>&nbsp;</p>
			        <p>
			          <%out.println("Total Bill:"+total1);%>
		            </p>
			        <p align="center">&nbsp;</p>
			        <p align="center"><strong><a href="UserMain.jsp">Back</a></strong></p>
			      </div>
				  
	    </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="UserMain.jsp">Home</a></li>
            <li><a href="UserLogin.jsp">Log Out </a></li>
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