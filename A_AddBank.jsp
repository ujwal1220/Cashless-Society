<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Bank Details</title>
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
.style3 {color: #000000}
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
          <h2 class="style4">Adding Bank Details..</h2>
          <div class="clr"></div>
		  <form action="A_AddBank1.jsp" method="post" enctype="multipart/form-data" id="s" ">
			                        <%
									try{
									String bank=request.getParameter("bank");
									%>
                    <table width="433" border="0" align="center">
                      <tr>
                        <td width="146" height="36"><div align="justify"><span class="style8 style38 style3"> Bank Name </span> </div></td>
                        <td width="277"><label>
                          <input type="text" id="t1" name="bname" value="<%=bank%>"  />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="53"><div align="justify"><span class="style3 style8 style38">Bank Address</span></div></td>
                        <td><label>
                          <textarea name="address" cols="19" rows="2" id="textarea"></textarea>
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35"><div align="justify"><span class="style3 style8 style38">Bank Location </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="loc" />
                        </label></td>
                      </tr>
                      <tr>
                        <td height="35"><div align="justify"><span class="style3 style8 style38">Bank Pincode </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="pin" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35"><div align="justify"><span class="style3 style8 style38">Bank Contact No </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="cno" />
                        </label></td>
                      </tr>
					  <tr>
                        <td height="35"><div align="justify"><span class="style3 style8 style38">Bank Email Id </span></div></td>
                        <td><label>
                          <input type="text" id="t3" name="mail" />
                        </label></td>
                      </tr>                     
                      <tr>
                        <td height="38"><div align="justify"><span class="style3 style8 style38"> Select Building Image </span></div></td>
                        <td><input type="file" id="userImage" name="image" style="width:100%" /></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td height="26">&nbsp;</td>
                        <td>
                          
                          <div align="left">
                            <input type="submit" name="Submit" value="Add Bank" />
                          </div></td>
                      </tr>
                    </table>
					<%
					}
					catch(Exception e)
					{
					out.print(e);
					}
					%>
          </form>
			      <p>&nbsp;</p>
		
					<div align="center"><a href="AdminMain.jsp" class="style11"><strong>Back</strong></a></div>
					
		</div>
      </div>
      <div class="sidebar">
        <div class="gadget">
          <h2 class="star"><span>Admin Menu</span></h2>
          <div class="clr"></div>
          <ul class="ex_menu">
            <li><a href="AdminMain.jsp">Home</a></li>
            <li><a href="AdminLogin.jsp">Logout</a></li>
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