<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Re-Login Page..</title>
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
.style5 {font-weight: bold}
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
          <h2 class="style3">Invalid Login Details, Please Try Again!!</h2>
          <div class="clr"></div>
          <form id="form1" name="form1" method="post" action="UserAuthentication.jsp">
            <table width="570" border="0" align="left" cellpadding="2" cellspacing="2">
		<tr>
            <td width="185" align="center" valign="middle"><label for="email">
            <div align="center"><span class="style34 style5 style4"><strong>Select Bank (required)</strong></span></div>
            </label></td>
            <td><p align="left">
                <select name="bank">
                   <option>Select</option>
                  <option>SBI Bank</option>
                  <option>Karnataka Bank</option>
                  <option>Corporation Bank</option>
                  <option>Canara Bank</option>
                  <option>Indian Bank</option>
                </select></p>              </td>
          </tr>
          <tr>
            <td height="46" align="center" valign="middle"><span class="style35">
              <label for="label">              </label>
              </span>
              <label for="label">
              <div align="center"><span class="style35 style5 style4"><strong>User Name (required)</strong></span></div>
              </label>
              <span class="style35">
                <label for="name"></label>
              </span></td><td width="371"><input id="name" name="userid" class="text" /></td>
          </tr>
          <tr>
            <td height="40" align="center" valign="middle"><span class="style35">
              <label for="email">              </label>
              </span>            <span class="style4">
              <label for="email">
              </span>
              <div align="center"><span class="style35 style5 style4"><strong>Password (required)</strong></span></div>
            </label></td>
            <td><input type="password" id="pass" name="pass" class="text" /></td>
          </tr>
          
          <tr>
            <td height="47">&nbsp;</td>
            <td><input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
              <span class="style38 style4">New User?</span><span class="style10"><strong><a href="UserRegister.jsp" class="style30"> Register </a></strong></span></td>
          </tr>
		  <tr>
            <td height="49"></td>
            <td> <p align="right"><a href="index.html" class="style36">Back</a></p></td>
          </tr>
        </table>
        </form>
         
        </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="UserLogin.jsp">Home</a></li>
            <li><a href="index.html">Index Page</a></li>
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
