<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
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
.style18 {
	font-size: 16px;
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
          <li><a href="UserLogin.jsp">User</a></li></ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
		<h2 class="style10 style14"><span class="style4">User</span> <span class="style3"><%=(String)application.getAttribute("uname")%></span><span class="style4">'s Bank Account Details..</span></h2>
          <div class="clr"></div>
		  <p>&nbsp;</p>
		  <table width="500" border="1" align="center"  cellpadding="0" cellspacing="0"  >
                    
                    <%
						
						String user=(String )application.getAttribute("uname");
						
						String i,s1,s2,s3,s4,s5;
						int s6=0;;
						 
						try 
						{
						   	String query="select * from userbankaccount where user='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getString(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getInt(7);
								
								
					%>
                    <tr>
                      <td  width="176" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Bank Account Number </strong></div></td>
                      <td  width="221" valign="middle" height="40" style="color:#FF0000;"><div align="left" class="style18" style="margin-left:20px;">
                          <strong><%out.println(i);%></strong>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>User Name </strong></div></td>
                      <td  width="221" valign="middle" height="50" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <strong><%out.println(s1);%></strong>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Address</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="50" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <strong><%out.println(s2);%></strong>
                      </div></td>
                    </tr>
                    <tr>
                      <td  width="176" align="left" valign="middle" height="50" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Email</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="50" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <strong><%out.println(s3);%></strong>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Mobile</strong></div></td>
                      <td align="left" valign="middle" height="51" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <strong><%out.println(s4);%></strong>
                      </div></td>
                    </tr>
                    <tr>
                      <td align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style14 style7 style15 style9 style41 style4" style="margin-left:20px;"><strong>Bank</strong></div></td>
                      <td align="left" valign="middle" height="51" style="color: #000000;"><div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                          <strong><%out.println(s5);%></strong>
                      </div></td>
                    </tr>
                    <tr>
                      <td   width="176" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style4 style14 style7 style15 style9 style41" style="margin-left:20px;"><strong>Amount</strong></div></td>
                      <td  width="221" align="left" valign="middle" height="51" style="color: #000000;"><div align="left">
                        <div align="left" class="style10 style33 style42 style43 style44" style="margin-left:20px;">
                            <strong><%out.println(s6);%></strong>
                        <span class="style5">Rs/-</span>                      </div></td>
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
		<div align="center" class="style22"><a href="U_ManageBankAccount.jsp" class="style11">Back</a></div>
		
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