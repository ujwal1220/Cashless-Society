<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Withdraw Status</title>
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
          <h2 class="style4">Withdraw Status..</h2>
          <div class="clr"></div>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import ="java.util.*,java.security.Key,java.util.Random,javax.crypto.Cipher,javax.crypto.spec.SecretKeySpec"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<%@ page import="java.util.Random,java.io.PrintStream, java.io.FileOutputStream, java.io.FileInputStream, java.security.DigestInputStream, java.math.BigInteger, java.security.MessageDigest, java.io.BufferedInputStream" %>
<% 



try
{
int amount1=0,amount2=0;
String a_no="",crn="",amount="";
a_no=request.getParameter("cardno");
crn=request.getParameter("crn");      
amount=request.getParameter("amount");

String user=(String)application.getAttribute("uname");
String bank=(String)application.getAttribute("ubank");




SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
Date now = new Date();

String strDate = sdfDate.format(now);
String strTime = sdfTime.format(now);
String date = strDate + "   " + strTime;

if(a_no.equals("")||crn.equals("")||amount.equals(""))
{
	%>
	<style type="text/css">
	<!--
	.style9 {
	color: #FF0000;
	font-weight: bold;
	font-size: 16px;
	}
	.style10 {color: #000000}
	-->
	</style>
	<div align="center"><br/>
	<br/>
	</div>
	<p align="center" class="style9">Please Enter all Values..</p>
	<div align="center"><br/>
	<br/>
	<a href="U_WithdrawMoney.jsp">Back</a>
	<%
}
else
{
	
	int currentbalance1=0,credit_to_be_taken=0;	
	int cashlimit=0,crlimit=0,credit_taken=0; 
	String sql="SELECT * FROM creditcard where (a_no='"+a_no+"' and crn='"+crn+"') and  a_name='"+user+"'";
	Statement stmt = connection.createStatement();
	ResultSet rs =stmt.executeQuery(sql);
	if(rs.next()==true)
	{
		 credit_taken=rs.getInt(9);
		 crlimit= Integer.parseInt(rs.getString(7));
	
	
	
				if(credit_taken<crlimit)
				{
	
							String query41="select cs_limit from creditcard where a_no='"+a_no+"'";
							Statement st41=connection.createStatement();
							ResultSet rs41=st41.executeQuery(query41);
							if ( rs41.next() )
							{
							cashlimit=rs41.getInt(1);
		
							credit_to_be_taken=crlimit-credit_taken;
							}
						int enteredamount1=Integer.parseInt(amount);
						if(enteredamount1<=cashlimit && enteredamount1<=credit_to_be_taken)
						{
	
			
							String status="Success";
							String purpose="Withdraw";
							String frombank="null";
							String fromaccount_no="null";
							String fromuser="null";
							String balance_credited="null";
							String credit_status="null";
							
						/* Updating the borrowed Credit into Credit Card */
							
							int cr_taken=credit_taken+enteredamount1;
							
							String crtkn="UPDATE creditcard SET credit_taken="+cr_taken+" where a_no='"+a_no+"'";
							Statement crtk=connection.createStatement();
							crtk.executeUpdate(crtkn);
							
							/* Updation Query Ends */

						String sql31="insert into transactions(user,bank,amount,a_no,crn,date,status,tranfor,frombank,fromaccount_no,fromuser,balance_credited,credit_status)values('"+user+"','"+bank+"','"+amount+"','"+a_no+"','"+crn+"','"+date+"','"+status+"','"+purpose+"','"+frombank+"','"+fromaccount_no+"','"+fromuser+"','"+balance_credited+"','"+credit_status+"')";
						Statement stmt31 = connection.createStatement();
						int k1=stmt31.executeUpdate(sql31);
			
									if(k1>0)
									{	
									
					String nuser="insert into cash_fraud(user,bank,cash_limit,activity,date)values('"+user+"','"+bank+"','"+amount+"','"+"Normal"+"','"+date+"')";
					Statement nstmt = connection.createStatement();
					nstmt.executeUpdate(nuser);
					
					
					
									%>
		  </div>
									<br/><br/> <p align="center" class="style7">Transaction Done Successfully..</p>
									<div align="center"><br/>
									<br/>
									<a href="U_WithdrawMoney.jsp">Back</a>
									<%
									}
									else
									{
									%>
									</div>
									<br/><br/><p align="center" class="style7">Transaction Failed !!..Please Try Again..</p>
									<div align="center"><br/>
									<br/>
									<a href="U_WithdrawMoney.jsp">Back</a>
									<%
									}
			
	
						}
						else
						{
						
							
							
					String abuser="insert into cash_fraud(user,bank,cash_limit,activity,date)values('"+user+"','"+bank+"','"+amount+"','"+"Abnormal"+"','"+date+"')";
					Statement abstmt = connection.createStatement();
					abstmt.executeUpdate(abuser);
						
					String abuser1="insert into fraud(user,bank,amount,activity,site,date,fraud_type)values('"+user+"','"+bank+"','"+amount+"','"+"Abnormal"+"','"+"bank_transaction"+"','"+date+"','"+"cash_fraud"+"')";
					Statement abstmt1 = connection.createStatement();
					abstmt1.executeUpdate(abuser1);
						
						%>
						</div>
						<br/><br/> <p align="center" class="style7">Entered Amount is more than the Cash Limit..Please try Again..</p>
						<div align="center"><br/>
						<br/>
						<a href="U_WithdrawMoney.jsp">Back</a>
						<%
						}
		
				}
				else{
				%>
				</div>
				<br/><br/><p align="center" class="style7">Credit Taken Exceeded the Maximum Credit Limit. Please Pay back the amount of Credit taken within the valid time period</p>
				<div align="center"><br/>
				<br/>
				<a href="U_WithdrawMoney.jsp">Back</a>
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
	<a href="U_WithdrawMoney.jsp">Back</a>
	<%
	}
	
	
	
	
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