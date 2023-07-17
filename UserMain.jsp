<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Main Page</title>
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
          <h2 class="style10 style14"><span class="style4">Welcome User</span> <span class="style3"><%=(String)application.getAttribute("uname")%></span><span class="style4">..</span> </h2>
          <p class="style10 style14">&nbsp;</p>
          <p class="style10 style14"><img src="images/ecom.jpg" width="577" height="242" /></p>
          <p class="style10 style14">&nbsp;</p>
          <p class="style10 style14">&nbsp;</p>
          <p class="style10 style14">&nbsp;</p>
          <div class="clr"></div>
          
         
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="UserMain.jsp">Home</a></li>
            <li><a href="UserProfile.jsp">View My  Profile</a></li>
            <li><a href="U_ManageBankAccount.jsp">Manage Bank Account </a></li>
			<li><a href="U_CreditCardRequest.jsp">Request Credit Card </a></li>
			<li><a href="U_CreditCard.jsp">View Credit Card Details </a></li>
            <li><a href="U_ViewCCTransactions.jsp">View Card Transactions </a></li>
            <li><a href="U_WithdrawMoney.jsp">Withdraw Cash</a> </li>
            <li><a href="U_ViewPayments.jsp">View Your Payments and Transfer to Your Credit Card Account</a></li>
            <li><a href="SearchProducts.jsp">Search products by keyword and purchase  </a></li>
            <li><a href="U_PurchasedProducts.jsp">View All Purchased Products </a></li>
            <li><a href="UserLogin.jsp">Log Out </a></li>
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
