<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		  <%@ include file="connect.jsp" %>
          <%@ page import="java.io.*" %>
          <%@ page import="java.util.*" %>
          <%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>BankAdminMain</title>
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
.style5 {color: #2C83B0}
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
          <h2 class="style10 style14"><span class="style3">Welcome To</span><span class="style5"> <%=(String)application.getAttribute("adbank")%> </span><span class="style3">Authority</span> <span class="style7"><%=(String)application.getAttribute("adname")%></span><span class="style3">..</span> </h2>
          
		  <p>
		    <%
	String bank =(String)application.getAttribute("adbank");
         %>
		  </p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p><img src="images/Admin.jpg" width="574" height="259" /></p>
		  <p>&nbsp;  </p>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
            <li><a href="AdminProfile.jsp">Bank Admin's Profile</a> </li>
            <li><a href="A_AuthorizeUsers.jsp">View Users and Authorize</a> </li>
			 <li><a href="A_AuthorizeEUsers.jsp">View E-Commerce Users and Authorize</a> </li>
			 <li><a href="A_AddBank.jsp?bank=<%=bank%>">Add Bank</a> </li>
			 <li><a href="A_ViewBank.jsp">View Bank Details</a> </li>
            <li><a href="A_ViewCCRequest.jsp">View Credit Card Requests</a> </li>
            <li><a href="A_CardTransactionBill.jsp">Generate Card Transaction Bill for a Period </a></li>
            <li><a href="A_AllBankFraud.jsp">Show all Bank Fraudulent Transactions</a> </li>
			<li><a href="A_AllccCashFraud.jsp">View all Normal and Abnormal CC Users for cash limit</a> </li>
			<li><a href="A_AllccPurchaseFraud.jsp">View all Normal and Abnormal Users for No Cash for purchase transactions </a> </li>
			<li><a href="A_AllccNoCashFraud.jsp">View all Normal and Abnormal CC Users for no.Cash to pay </a> </li>
            <li><a href="AdminLogin.jsp">Logout </a></li>
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
