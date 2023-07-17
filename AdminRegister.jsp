<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>BankAdminRegistrationPage</title>
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
          <h2 class="style3">Welcome To Bank Admin Registration Page..</h2>
          <p class="style34">&nbsp;</p>
          <div class="clr"></div>
          <div class="clr"></div>
          <form action="AdminRegisterStatus.jsp" method="post" id="" enctype="multipart/form-data">
            <label for="name"><span class="style4">Select Bank (required)
             <select name="bank">
                  <option>Select</option>
                  <option>SBI Bank</option>
                  <option>Karnataka Bank</option>
                  <option>Corporation Bank</option>
                  <option>Canara Bank</option>
                  <option>Indian Bank</option>
             </select>
         </span></label>
            <br/><br/>

            <label for="name"><span class="style4">
            Bank Admin Name (required)</span></label>
            <p class="style4">
              <input id="name" name="adminid" class="text" />
            </p>
            <span class="style4">
            <label for="password">Password (required)</label>
            </span>
            <p class="style4">
              <input type="password" id="password" name="pass" class="text" />
            </p>
            <span class="style4">
            <label for="email">Email Address (required)</label>
            </span>
            <p class="style4">
              <input id="email" name="email" class="text" />
            </p>
            <span class="style4">
            <label for="mobile">Mobile Number (required)</label>
            </span>
            <p class="style4">
              <input id="mobile" name="mobile" class="text" />
            </p>
            <span class="style4">
            <label for="address">Your Address</label>
            </span>
            <p class="style4">
              <textarea id="address" name="address" rows="2" cols="50"></textarea>
            </p>
            <span class="style4">
            <label for="dob">Date of Birth (required)<br />
            </label>
            </span>
            <p class="style4">
              <input id="dob" name="dob" class="text" />
            </p>
            <span class="style4">
            <label for="gender">Select Gender (required)</label>
            </span>
            <p class="style4">
              <select id="s1" name="gender" style="width:480px;" class="text">
                <option>--Select--</option>
                <option>MALE</option>
                <option>FEMALE</option>
              </select>
            </p>
            <span class="style4">
            <label for="pic">Select Profile Picture(required)</label>
            </span>
            <span class="style4">
            <input type="file" id="pic" name="pic" class="text" />
            </span>
            <p><br />
                <input name="submit" type="submit" value="REGISTER" />
            </p>
          </form>
         <div align="center"><a href="AdminLogin.jsp" class="style39">Back</a></div>
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="AdminRegister.jsp">Home</a></li>
            <li><a href="AdminLogin.jsp">Bank Admin</a></li>
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
