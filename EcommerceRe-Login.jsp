<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ecommerce User  Re-Login Page</title>
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
.style4 {
	color: #000033;
	font-weight: bold;
}
.style5 {color: #000000}
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
          <h2 class="style3">Invalid Login Details, Please Try Again!!</h2>
          <div class="clr"></div>
          <form id="form1" name="form1" method="post" action="EcommerceAuthentication.jsp">
				    <table width="464" border="0" cellspacing="2" cellpadding="2">
                      <tr>
                        <td width="197" height="46" align="center"><span class="style34">
                          <label for="name"><span class="style4">Select E-Commerce Site</span> </label>
                        </span> </td>
					  <td width="253"><select id="s2" name="Esite" style="width:150px;" class="text">
                        <option>--Select--</option>
                        <option>Flipkart</option>
                        <option>Amazon</option>
						<option>ebay</option>
						<option>Myntra</option>
                      </select></td>
                      </tr>
					  <tr>
                        <td width="197" height="46" align="center"><span class="style34"> <span class="style5">
                          <label for="name"><strong>Name (required)</strong></label>
                        </span> </span> </td>
                        <td width="253"><input id="name" name="userid" class="text" /></td>
                      </tr>
                      <tr>
                        <td height="40" align="center"><span class="style5 style34"><strong>Password (required)</strong></span></td>
                        <td><input type="password" id="pass" name="pass" class="text" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td><span class="style16">
                          <input name="imageField" type="submit"  class="LOGIN" id="imageField" value="Login" />
                          <span class="style5"> New User?</span></span><a href="EcommerceRegister.jsp" class="style30"><strong> Register </strong></a></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
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
            <li><a href="#">Home</a></li>
            <li><a href="AdminLogin.jsp">Bank Admin</a></li>
            <li><a href="EcommerceLogin.jsp">E-Commerce </a></li>
            <li><a href="UserLogin.jsp">User</a></li>
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
