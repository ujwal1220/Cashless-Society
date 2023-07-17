<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Withdraw From CreditCard</title>
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
          <h2 class="style4">Withdraw Amount from Credit Card..</h2>
          <div class="clr"></div>
	      <%String user=(String)application.getAttribute("uname");
		  String bank=(String)application.getAttribute("ubank");%>
          <form action="U_WithdrawMoneyStatus.jsp" method="post" >
            <table width="549" border="0" cellspacing="2" cellpadding="2">
              <tr>
                <td width="220" height="57"><span class="style48">
                  <label for="name"><span class="style15 style5">Account Holder Name </span></label>
                </span></td>
                <td width="315"><span class="style48 style15">
                  <input type="text"  name="name" value="<%=user%>" readonly="readonly"/>
                </span></td>
              </tr>
              <tr>
                <td height="50"><span class="style48 style15"><span class="style15">
                  <label for="name"><span class="style5">Bank Name</span> </label>
                </span></span></td>
                <td><span class="style48 style15">
                  <input type="text"  name="bank" value="<%=bank%>" readonly="readonly"/>
                </span></td>
              </tr>
              <tr>
                <td height="45"><span class="style60 style5">
                  <label for="amount">Enter Amount to Withdraw (required)</label>
                </span> </td>
                <td><span class="style50 style15"><span class="style58">
                  <input type="text"  name="amount" class="text" />
                </span></span></td>
              </tr>
			  <tr>
                <td height="53"><span class="style60">
                  <label for="cardno"><span class="style5">Enter Credit Card Account No</span></label>
                  <span class="style58 style5">
                  <label for="cardno">(required)</label>
                  </span><span class="style58"><strong><label for="cardno"></label>
                  </strong></span> </span></td>
                <td><span class="style50"><span class="style58">
                  <input type="text"  name="cardno" class="text" />
                </span></span></td>
              </tr>
              <tr>
                <td height="53"><span class="style60">
                  <label for="crn"><span class="style5">Enter CRN</span></label>
                  <span class="style58 style5">
                  <label for="crn">(required)</label>
                  </span>  </span></td>
                <td><span class="style50"><span class="style58">
                  <input type="text"  name="crn" class="text" />
                </span></span></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><p class="style48">
                  <input name="submit" type="submit" value="   Submit  " />
                </p></td>
              </tr>
            </table>
          </form>
          <p align="right"><a href="UserMain.jsp" class="style11">Back</a></p>
          <div class="clr"></div>
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