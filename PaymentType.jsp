<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Payment Options</title>
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
.style5 {color: #FF3300; font-weight: bold; }
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
		 <h2 class="style4">Select Cashless Payment Option..</h2>
          <div class="clr"></div>
          <p>&nbsp;</p>
		  <% 
		  String p_Name=request.getParameter("p_Name");
		  String p_Mfg=request.getParameter("p_Mfg");
		  String price=request.getParameter("price");
		  String site=request.getParameter("site");
		  %>
		<table width="206" border="0" align="left" cellpadding="2" cellspacing="2">
                      <tr>
                        <td width="198"><ul class="sb_menu"><li>
                          <p class="style3"><a href="PurchaseViaDebit.jsp?p_Name=<%=p_Name%>&amp;p_Mfg=<%=p_Mfg%>&amp;price=<%=price%>&amp;site=<%=site%>" class="style5" style="color:#CC0066">Debit Card </a></p>
                        </li>
                          <li>
                            <p class="style40"><a href="PurchaseViaCredit.jsp?p_Name=<%=p_Name%>&amp;p_Mfg=<%=p_Mfg%>&amp;price=<%=price%>&amp;site=<%=site%>" class="style3" style="color:#CC0066"><strong>Credit Card </strong></a></p>
                          </li>
                        </ul></td>
                      </tr>
          </table>
			
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p class="style19">&nbsp;</p>
				  <p><a href="UserMain.jsp" class="style16">Back</a></p>
				  
	    </div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>User Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="UserMain.jsp">Home</a></li>
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