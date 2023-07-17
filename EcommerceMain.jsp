<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce Main</title>
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
.style6 {font-size: 24px; }
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
          <h2 class="style4">Welcome <span class="style6" style="color:#FF6600"><%=(String)application.getAttribute("esite")%></span> User <span class="style6" style="color:#FF0066"><%=(String)application.getAttribute("ename")%></span>..</h2>
          <p class="style4"><img src="images/User.jpg" width="560" height="334" /></p>
          <div class="clr"></div>
          
         
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Ecommerce Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
	  <li><a href="EcommerceMain.jsp"><strong>Home</strong></a></li>
      <li><a href="E_AddProduct.jsp"> <strong>Add Products</strong></a></li> 
	  <li><a href="ViewProducts.jsp"><strong>View all products with ranks</strong></a></li>
	  <li><a href="E_PurchasedProducts.jsp"><strong>View all purchased products with total bill</strong></a></li>
	  <li><a href="E_AllccPurchaseFraud.jsp"><strong>Find Fraud Detection (View all normal and abnormal users)</strong></a></li>
	  <li><a href="E_AllccPurchaseFraudInChart.jsp"><strong>View No of Normal and Abnormal users in chart</strong></a></li>
	  <li><a href="EcommerceLogin.jsp"><strong>Logout</strong></a></li>
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
