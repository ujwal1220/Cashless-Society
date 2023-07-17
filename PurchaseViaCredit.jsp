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
<title>Purchase Status</title>
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
.style6 {color: #FFFF00; font-size: 14px; }
.style7 {color: #000000; font-size: 14px; }
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
          <h2 class="style4">Purchase Using Credit Card Status..</h2>
          <div class="clr"></div>

<% 



try
{
			int amount1=0,amount2=0;

			String p_Name=request.getParameter("p_Name");
	
			String p_Mfg=request.getParameter("p_Mfg");	
			
			String price=request.getParameter("price");		
		
			String site=request.getParameter("site");
			
			

String user=(String)application.getAttribute("uname");
String bank=(String)application.getAttribute("ubank");




SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String date = strDate + "   " + strTime;



	
	int currentbalance1=0,credit_to_be_taken=0;	
	int creditlimit=0,crlimit=0,credit_taken=0; 
	String a_no="",crn="";
	String sql="SELECT * FROM creditcard where a_name='"+user+"' and b_name='"+bank+"' ";
	Statement stmt = connection.createStatement();
	ResultSet rs =stmt.executeQuery(sql);
	if(rs.next()==true)
	{
		 credit_taken=rs.getInt(9);
		 crlimit= Integer.parseInt(rs.getString(7));
		 a_no=rs.getString(1);
		 crn=rs.getString(2);
	
				if(credit_taken<crlimit)
				{
	
							String query41="select cr_limit from creditcard where a_no='"+a_no+"'";
							Statement st41=connection.createStatement();
							ResultSet rs41=st41.executeQuery(query41);
							if ( rs41.next() )
							{
							creditlimit=rs41.getInt(1);
		
							credit_to_be_taken=crlimit-credit_taken;
							}
						int product_price=Integer.parseInt(price);
						if(product_price<=creditlimit && product_price<=credit_to_be_taken)
						{
	
			
							String cr_taken=String.valueOf(credit_taken+product_price);
							
							
							
							
							
							
						/* Updating the borrowed Credit into Credit Card */
														
							String crtkn="UPDATE creditcard SET credit_taken="+cr_taken+" where a_no='"+a_no+"'";
							Statement crtk=connection.createStatement();
							crtk.executeUpdate(crtkn);
							
							/* Updation Query Ends */
							
							
							
						/* Updating the Transaction Details into Transactions Tabel */	
						
							String status="Success";
							String purpose="Purchase";
							String frombank="null";
							String fromaccount_no="null";
							String fromuser="null";
							String balance_credited="null";
							String credit_status="null";
							
							String sql31="insert into transactions(user,bank,amount,a_no,crn,date,status,tranfor,frombank,fromaccount_no,fromuser,balance_credited,credit_status)values('"+user+"','"+bank+"','"+price+"','"+a_no+"','"+crn+"','"+date+"','"+status+"','"+purpose+"','"+frombank+"','"+fromaccount_no+"','"+fromuser+"','"+balance_credited+"','"+credit_status+"')";
						Statement stmt31 = connection.createStatement();
						stmt31.executeUpdate(sql31);
						
						
						/* Updation Query Ends */




						PreparedStatement ps1=connection.prepareStatement("insert into purchase(card_no,user,p_name,p_mfg,date,price,site) values(?,?,?,?,?,?,?)");
														ps1.setString(1,a_no);
														ps1.setString(2,user);
														ps1.setString(3,p_Name);
														ps1.setString(4,p_Mfg);
														ps1.setString(5,date);
														ps1.setString(6,price);
														ps1.setString(7,site);
														
														int k1=ps1.executeUpdate();
						
			
									if(k1>0)
									{	
									
					String nuser="insert into purchase_fraud(user,bank,purchase_amount,activity,site,date)values('"+user+"','"+bank+"','"+price+"','"+"Normal"+"','"+site+"','"+date+"')";
					Statement nstmt = connection.createStatement();
					nstmt.executeUpdate(nuser);
					
					
					
									%>
		  </div>
									<br/><br/> <p align="center" class="style7">Transaction Done Successfully..</p>
									<div align="center"><br/>
									<br/>
									<a href="SearchProducts.jsp">Back</a>
									<%
									}
									else
									{
									%>
									</div>
									<br/><br/><p align="center" class="style7">Transaction Failed !!..Please Try Again..</p>
									<div align="center"><br/>
									<br/>
									<a href="UserMain.jsp">Back</a>
									<%
									}
			
	
						}
						else
						{
						
							
							
					String abuser="insert into purchase_fraud(user,bank,purchase_amount,activity,site,date)values('"+user+"','"+bank+"','"+"No Cash"+"','"+"Abnormal"+"','"+site+"','"+date+"')";
					Statement abstmt = connection.createStatement();
					abstmt.executeUpdate(abuser);
						
					String abuser1="insert into fraud(user,bank,amount,activity,site,date,fraud_type)values('"+user+"','"+bank+"','"+"No Cash"+"','"+"Abnormal"+"','"+site+"','"+date+"','"+"purchase_fraud"+"')";
					Statement abstmt1 = connection.createStatement();
					abstmt1.executeUpdate(abuser1);	
						
						%>
						</div>
						<br/><br/> <p align="center" class="style7">Product Price is more than the Credit Limit..Please try Again..</p>
						<div align="center"><br/>
						<br/>
						<a href="UserMain.jsp">Back</a>
						<%
						}
		
				}
				else{
				%>
				</div>
				<br/><br/><p align="center" class="style7">Credit Taken Exceeded the Maximum Credit Limit. Please Pay back the amount of Credit taken within the valid time period</p>
				<div align="center"><br/>
				<br/>
				<a href="UserMain.jsp">Back</a>
				<%
				}
	}
	else
	{
	%>
	</div>
	<br/><br/> <p align="center" class="style7">Credit Card Number Not Found..Please Try Again..</p>
	<div align="center"><br/>
	<br/>
	<a href="UserMain.jsp">Back</a>
	<%
	}
	
	
	
	




connection.close();
}
catch(Exception e)
{
out.print(e);
}

%>

</div>

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