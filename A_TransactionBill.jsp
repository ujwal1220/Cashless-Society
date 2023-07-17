<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Transaction Bill</title>
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
.style5 {font-weight: bold}
.style6 {color: #000000}
.style12 {color: #009999}
.style45 {color: #2C83B0;
		font-size: 14px;}
.style55{color:#CC0033;
		font-size:14px;
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
          <h2> <span class="style3">Transactions of Account Number '</span><span class="style12"><%=request.getParameter("a_no")%><span class="style3">'</span></span><span class="style3"></span> </h2>
	    </div>
	    <div class="mainbar">
          <p class="style3">&nbsp;</p>
          <div class="clr"></div>
		  <div class="clr"></div>
          <p>&nbsp;</p>
		  
          <table width="743" border="1" align="center"  cellpadding="0" cellspacing="0"  ">
            <tr>
              <td  width="47"  valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style5 style56 style57 style3">ID</div></td>
              <td  width="145" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Transaction Amount</strong></div></td>
			  <td  width="154" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Transaction Purpose</strong>  </div></td>
              <td  width="154" valign="middle" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Transaction Status </strong></div></td>
              
              <td  width="133" valign="middle" height="34" style="color: #2c83b0;"><div align="center" class="style3 style57 style56"><strong>Transaction Date</strong></div></td>
            </tr>
            <%@ include file="connect.jsp" %>
            <%
					   String a_no=request.getParameter("a_no");
					   String s1,s2,s3,s4,s5,s6,s7;
						int i=0,j=1;
						try 
						{
						   	String query="select * from transactions where (a_no='"+a_no+"' and Status='Success') order by id ASC LIMIT 10"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(4);
								s2=rs.getString(8);
								s3=rs.getString(7);
								s4=rs.getString(9);	
								s5=rs.getString(7);								
						
						
								
					%>
            <tr>
              <td height="40" align="center"  valign="middle"><div align="center" class="style6">
                <%out.println(i);%>
              </div></td>
              <td height="40" align="center"  valign="middle"><div align="center" class="style6">
                <strong><%out.println(s1);%></strong>
                <span class="style6">Rs/-</span>              </div></td>
				<td align="center"  valign="middle"><div align="center" class="style45">
			  <%
			  if(s4.equalsIgnoreCase("transfer"))
			  	{
				%>
					
					<p><a href="A_MoneyTransferDetails.jsp?id=<%=i%>&a_no=<%=a_no%>" class="style55"><strong>Transfer</strong></a></p>
					
				<%
				}
				else
				{%>
					 
						<strong><%out.println(s4);%></strong>
					  
			  <%}%>
			  
			  </div></td>
              <td align="center"  valign="middle"><div align="center" class="style6">
                <strong><%out.println(s2);%></strong>
              </div></td>
			   
              <td height="40" align="center"  valign="middle"><div align="center" class="style6">
                <%out.println(s3);%>
              </div></td>
            </tr>
            <%
						j+=1;}
						
					
				
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e);
					}
					%>
          </table>
          <p align="right"><a href="AdminMain.jsp" class="style11"></a></p>
          <p align="right">&nbsp;</p>
          <table width="476" border="0" cellspacing="2" cellpadding="2">
            <tr>
              <td width="468"><div align="right"><a href="A_CardTransactionBill.jsp" class="style95">Back</a></div></td>
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