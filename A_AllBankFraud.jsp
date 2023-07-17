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
.style4 {color: #660000;
		 font-size: 14px}
.style5 {color:#990066;
		font-size: 16px;
		font-weight:bold}
.style7 {color: #2C83B0}
.style13 {
	font-size: 16px;
	color: #CC0033;
	font-weight: bold;
}
.style15 {color:#003300}
.style16 {color:#006699;
		font-size:12px;
		font-weight:bold}
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
          <h2 class="style3"> <span class="style7"><%=(String)application.getAttribute("adbank")%></span> Fraudulent Transactions</h2>
	  
	  	    
  	      <p>&nbsp;</p>
					
					<p>
                    <%@ include file="connect.jsp" %>
                  <%

    int num=1,count=0;
try 
{
	String str= "select distinct(fraud_type) from fraud";
	Statement st = connection.createStatement();
	ResultSet rs= st.executeQuery(str);
	
	while(rs.next())
	{	
		String fraud=rs.getString(1);
		
		%><p class="style14 style18"><span class="style5"><%=num%> . <%="  "+fraud%></span> <span class="style4 style3">(Fraud Type )</span><br />
                  <br /><%
		String str1= "select id,user,activity from fraud where fraud_type='"+fraud+"' ";
		Statement st1 = connection.createStatement();
		ResultSet rs1 = st1.executeQuery(str1);
		while(rs1.next())
		{	
			int i=rs1.getInt(1);
			String user=rs1.getString(2);
			String activity=rs1.getString(3);
			
				count++;
			
			out.print("<input type=\"checkbox\" name=\"t_task\" ");
			
			%>
                  <p class="style16"><span class="style16"><a href="A_AllBankFraudDetails.jsp?id=<%=i%>&user=<%=user%>&ft=<%=fraud%>"><%=""+user%>[<%=" "+activity%>]</a></span></p><p><%
		}
		num++;
	}         
	connection.close();
}
catch(Exception e)
{
out.println(e.getMessage());
}

	if(count==0){out.print("No Fraud details Found");}

     %>
			  </table>
			</p>
        	
		<p align="left"><a href="AdminMain.jsp" class="style95">Back</a></p>
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
