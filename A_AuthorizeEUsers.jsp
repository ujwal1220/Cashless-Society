<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Authorize E Users</title>
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
.style5 {font-weight: bold}
.style6 {color: #FF9900;
		font-size: 14px}
.style7 {color:#FF3333;
		font-size: 14px}
.style8 {font-size: 12px}
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
          <h2 class="style3">Authorize Ecommerce Users</h2>
		  </div>
	    <div class="mainbar">
          
          <div class="clr"></div>
		  
          <p>&nbsp;</p>
		  <table width="650" border="1" align="left"  cellpadding="0" cellspacing="0"  ">
                    <tr>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>ID</strong></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>User Name</strong></div></td>
					  <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Website</strong></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Email</strong></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Address</strong></div></td>
                      <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style57 style56"><strong>Status</strong></div></td>
                    </tr>
                    <%@ include file="connect.jsp" %>
                    <%
					  
						String s1,s2,s3,s4,s5,s6,s7;
						int i=0;
						try 
						{
						   	String query="select * from euser"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(6);
								s4=rs.getString(10);
								s5=rs.getString(9);
								
								
								
								
							
						
					%>
                    <tr>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                        <%out.println(i);%>
                      </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                            <span class="style7">
                            <strong><%out.println(s1);%></strong>
                            </span></div></td>
					  <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                            <span class="style6">
                            <strong><%out.println(s5);%></strong>
                            </span></div></td>		
                      <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                            
                            <%out.println(s2);%>
                            </span></div></td>
                      <td height="0" align="center"  valign="middle"><div align="center" class="style4">
                            
                            <%out.println(s3);%>
                            </span></div></td>
                      <%
						if(s4.equalsIgnoreCase("waiting"))
						{
						
						%>
                      <td valign="middle" height="0" style="color:#000000;"align="center"><div align="center" class="style22 style5 style20 style30 style37">
                          <div align="center" class="style2"><a href="E_UserStatus.jsp?id=<%=i%>" class="style32 style30 style8">waiting</a></div>
                      </div></td>
                      <%
						}
						else
						{
						%>
                      <td width="17" height="0" align="center"  valign="middle"><div align="center" class="style4">
                        <strong><%out.println(s4);%></strong>
                      </div></td>
                      <%
						}
						
						%>
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
				  <p class="style19">&nbsp;</p>
		          <p>&nbsp;</p>
		          <p>&nbsp;</p>
				  <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="center"><a href="AdminMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
				  
				  <p>&nbsp;</p>
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