<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 <%@ include file="connect.jsp" %>
            <%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Bank Profile Page</title>
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
.style5 {color: #2C83B0}
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
          <h2 class="style10 style14"><span class="style4"></span> <span class="style5"><%=(String)application.getAttribute("adbank")%></span> <span class="style4">Details..</span></h2><div class="clr"></div>
          <p>&nbsp;</p>
          <table width="519" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >
           
            <%
			
						
						
						String bank=(String )application.getAttribute("adbank");
						
						String s1,s2,s3,s4,s5,s6;
						int i=0;
						try 
						{
						   	String query="select * from bank where b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(3);
								s3=rs.getString(4);
								s4=rs.getString(5);
								s5=rs.getString(6);
								s6=rs.getString(7);
								
								
								
					%>
            <tr>
              <td width="211" rowspan="7" ><div class="style7 style26" style="margin:10px 13px 10px 13px;" >
                <p><a class="#" id="img1" href="#" >
                  <input  name="image" type="image" src="user_Pic.jsp?picture=<%="bankimage"%>&id=<%=i%>" style="width:180px; height:140px;" />
                </a></p>
              </div></td>
            </tr>
            <tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Name </strong></div></td>
              <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s1);%>
              </strong></div></td>
            </tr>
			<td  width="150" align="left" valign="middle" height="69" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Address</strong></div></td>
              <td  width="150" align="left" valign="middle" height="69" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s2);%>
              </strong></div></td>
            </tr>
			<tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank location </strong></div></td>
              <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s3);%>
              </strong></div></td>
            </tr>
			<tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Pincode </strong></div></td>
              <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s4);%>
              </strong></div></td>
            </tr>
			<tr>
              <td valign="middle" height="65" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank Contact No </strong></div></td>
              <td valign="middle" height="65" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s5);%>
              </strong></div></td>
            </tr>
            <tr>
              <td  width="150" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style15 style7 style4 style3 style22 style33" style="margin-left:20px;"><strong>Bank E-Mail Id</strong></div></td>
              <td  width="150" valign="middle" height="51" style="color:#000000;"><div align="left" class="style42 style41 style10" style="margin-left:20px;"><strong>
                  <%out.println(s6);%>
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
          <h2 class="star"><span>Admin Menu</span></h2>
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