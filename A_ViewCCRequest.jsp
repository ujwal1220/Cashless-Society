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
<title>Credit Card Request Process</title>
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
.style4 {
	color: #660000;
	font-size: 24px;
}
.style5 {color: #2C83B0;
		font-size: 24px;
		}
.style6 {
	color: #660000;
	font-weight: bold;
}
.style7 {color: #660000}
.style9 {color:#000000}

.style12 {color: #009999}
.style44 {color:#FF3300;
		font-size: 14px;}
.style45 {color: #2C83B0;
		font-size: 14px;}
		
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
		<h2 class="style10 style14"><span class="style4">Credit Card Requests from </span><span class="style5"><%=(String)application.getAttribute("adbank")%></span><span class="style4">'s Users..</span><strong></span></strong></h2>
		</div>
	    <div class="mainbar">
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="900" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="106"  valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style56 style57 style6">ID</div></td>
              <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Bank Name</strong></div></td>
			  <td  width="250" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Account Holder Name</strong></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Credit Limit</strong></div></td>
			  <td  width="199" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Cash Limit</strong></div></td>
              <td  width="217" valign="middle" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Requested Date</strong></div></td>
              <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style7 style57 style56"><strong>Credit Card Number </strong></div></td>
			  <td  width="171" valign="middle" height="25" style="color: #2c83b0;"><div align="center" class="style57 style56 style7"><strong>CRN </strong></div></td>
            </tr>
            <%
					  String bank=(String)application.getAttribute("adbank");
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
																					
						   	String query="select * from creditcardrequest where b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(8);
								s4=rs.getString(9);
								s5=rs.getString(10);
								s6=rs.getString(6);
								s7=rs.getString(7);
								
								
					%>
            <tr>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(j);%>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style45">
                <strong><%out.println(s1);%></strong>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style44">
                <strong><%out.println(s2);%></strong>
              </div></td>
			  <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s3);%>
              </div></td>
              <td height="57" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s4);%>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s5);%>
              </div></td>
             
              <%
						if(s6.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td valign="middle" height="57" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateCreditCardNm.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=s2%>" class="style87 style30 style96 style12"><strong>Generate CC No</strong></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<strong><%out.println(s6);%></strong>
						  </div></td>
            			 <%}%>
						 <%
						if(s7.equalsIgnoreCase("Requested"))
						{
						
						%>
              <td valign="middle" height="57" style="color:#000000;"align="center"><div align="center">
                  <div align="center" class="style20 style37 style46"><a href="GenerateCRN.jsp?typebank=<%=bank%>&amp;id=<%=i%>&accountname=<%=s2%>" class="style87 style30 style96 style12"><strong>Generate CRN</strong></a></div>
              </div></td>
              <%
			  			}
						  else
						{
						%> <td width="17" align="center"  valign="middle"><div align="center" class="style12">
							
							<strong><%out.println(s7);%></strong>
						  </div></td>
            			 <%}%>
						  
            </tr>
            <%
						j+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="VendorMain.jsp" class="style11"></a></p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="AdminMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
          <h2>&nbsp;</h2>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
            <li><a href="AdminLogin.jsp">Logout </a></li>
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
