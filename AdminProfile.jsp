<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		  <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin's Profile</title>
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
.style7 {color: #FF3300}
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
          <li><a href="UserLogin.jsp">User</a></li>
          
        </ul>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
		<h2 class="style10 style14"><span class="style3">Bank Admin</span> <span class="style7"><%=(String)application.getAttribute("adname")%></span><span class="style3">'s Profile..</span></h2>
		<div class="clr"></div>
          <p>&nbsp;</p>
          <table width="519" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
            
            <%
						
						String name=(String )application.getAttribute("adname");
						String bank=(String )application.getAttribute("adbank");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from bankadmin where username='"+name+"' and bank='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(5);
								s3=rs.getString(6);
								s4=rs.getString(7);
								s5=rs.getString(8);
								s6=rs.getString(10);
								
								
								
					%>
            <tr>
              <td width="226" rowspan="6" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" ><strong><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="bankadmin"%>&id=<%=i%>" style="width:200px; height:200px;" />
              </a></strong></div></td>
            </tr>
            <tr>
              <td valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style22 style33 style3" style="margin-left:20px;"><strong>Bank Name </strong></div></td>
              <td valign="middle" height="40" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s1);%>
                            </strong></div></td>
            </tr>
            <tr>
              <td  width="122" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style22 style33 style3" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
              <td  width="163" valign="middle" height="40" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s2);%>
                            </strong></div></td>
            </tr>
            <tr>
              <td  width="122" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style22 style33 style3" style="margin-left:20px;"><strong>Mobile</strong></div></td>
              <td  width="163" valign="middle" height="40" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s3);%>
                            </strong></div></td>
            </tr>
            <tr>
              <td  width="122" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style22 style33 style3" style="margin-left:20px;"><strong>Address</strong></div></td>
              <td  width="163" align="left" valign="middle" height="40" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s4);%>
                            </strong></div></td>
            </tr>
            <tr>
              <td  width="122" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style15 style3 style22 style33" style="margin-left:20px;"><strong>Date of Birth</strong></div></td>
              <td  width="163" align="left" valign="middle" height="40" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s5);%>
                            </strong></div></td>
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
		  <p align="right">&nbsp;</p>
          <p align="center"><a href="AdminMain.jsp" class="style11">Back</a></p>
	    </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
            <li><a href="AdminLogin.jsp">Logout</a></li>
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