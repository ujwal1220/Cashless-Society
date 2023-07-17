<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Card Transaction Bill</title>
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
.style4 {color: #000000}
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
          <h2 class="style3">All User's Credit Card Details and Transaction Bill..</h2>
		  </div>
	    <div class="mainbar">
          <p class="style3">&nbsp;</p>
          <div class="clr"></div>
		  <div class="clr"></div>
          <p>&nbsp;</p>
          <table width="766" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="52"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>ID</strong></div></td>
              <td  width="146" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>User Name</strong></div></td>
              <td  width="152" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Bank</strong></div></td>
              <td  width="142" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Account No </strong></div></td>
              <td  width="130" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>CRN</strong></div></td>
              <td  width="130" valign="middle" height="34" style="color: #2c83b0;">&nbsp;</td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					  String admin=(String)application.getAttribute("adname");
					  String bank=(String)application.getAttribute("adbank");
					  String s1,s2,s3,s4,s5,s6,s7;
						int i=1;
						try 
						{
						   	String query="select * from creditcard where b_name='"+bank+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{

								s1=rs.getString(4);
								s2=rs.getString(3);
								s3=rs.getString(1);
								s4=rs.getString(2);								
							
								
					%>
            <tr>
              <td height="45" align="center"  valign="middle"><div align="center" class="style99">
                <%out.println(i);%>
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style44">
                <strong><%out.println(s1);%></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style45">
                <strong><%out.println(s2);%></strong>
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style12">
                 <strong><%out.println(s3);%></strong>
              </div></td>
              <td align="center"  valign="middle"><div align="center" class="style12">
                 <strong><%out.println(s4);%></strong>
                
              </div></td>
              <td height="45" align="center"  valign="middle"><div align="center" class="style99 style100">
			  <form action="A_TransactionBill.jsp" method="post">
			  <input name="a_no" type="hidden" value="<%=s3%>" readonly="" />
			  <input name="Submit" type="Submit" value="View Transaction Bill" />
			  </form>
			   </div></td>
            </tr>
            <%
						i+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
          </table>
          <p align="right"><a href="AdminMain.jsp" class="style11"></a></p>
          <table width="443" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="435"><div align="right"><a href="AdminMain.jsp" class="style95">Back</a></div></td>
            </tr>
          </table>
		  
		  
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