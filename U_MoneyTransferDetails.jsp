<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Transfer Money Details..</title>
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
.style5 {color: #FF3300;
		font-size: 24px;
		}
.style9 {color:#000000}
.style12 {color: #009999}
.style45 {color: #2C83B0;
		font-size: 14px;}
.style46 {
	font-size: 16px;
	font-weight: bold;
	color: #660000;
}
.style47 {
	font-size: 16px;
	color: #660000;
}
.style50 {color:#FF0000}
.style51 { color:#990033}
.style52 {font-size: 14px}
		
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
		<h2 class="style10 style14"><span class="style4">Transfer Details of Transaction id= '</span><span class="style5"><%=Integer.parseInt(request.getParameter("id"))%></span><span class="style4">'..</span><strong></span></strong></h2>
		</div>
	    <div class="mainbar">
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
          <table width="900" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="145" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style46 style52"> From Account </div></td>
              <td  width="171" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style46 style52">From Bank </div></td>
              <td  width="138" valign="middle" height="33" style="color: #2c83b0;"><div align="center" class="style57 style56 style47 style52"><strong> To Credit Card </strong></div></td>
              <td  width="161" valign="middle" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style46 style52">Bank </div></td>
              <td  width="170" valign="middle" height="33" style="color: #2c83b0;"><div align="center" class="style47 style57 style56 style52"><strong>Transaction Amount</strong></div></td>
              <td  width="133" valign="middle" height="33" style="color: #2c83b0;"><div align="center" class="style57 style56 style47 style52"><strong>Date</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					   		  String accno=request.getParameter("accno");

					   		   int id=Integer.parseInt(request.getParameter("id"));

					  String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
						   	String query="select * from transactions where id='"+id+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(11);
								s2=rs.getString(10);
								s3=rs.getString(5);
								s4=rs.getString(3);	
								s5=rs.getString(4);									
								s6=rs.getString(7);								
						
						
								
					%>
            <tr>
              <td align="center"  valign="middle"><div align="center" class="style50	">
                <strong><%out.println(s1);%></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style45">
                <strong><%out.println(s2);%></strong>
              </div></td>
              <td height="61" align="center"  valign="middle"><div align="center" class="style12">
                <strong><%out.println(s3);%></strong>
              </div></td>
			  
			  <td align="center"  valign="middle"><div align="center" class="style45">
			    <strong><%out.println(s4);%></strong>
			  </div></td>
              <td height="61" align="center"  valign="middle"><div align="center" class="style51">
                <strong><%out.println(s5);%></strong>
                <span class="style9">Rs/-</span> </div></td>
              <td height="61" align="center"  valign="middle"><div align="center" class="style9">
                <%out.println(s6);%>
              </div></td>
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
          <p align="right">&nbsp;</p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="U_ViewCCTransactions.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
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
