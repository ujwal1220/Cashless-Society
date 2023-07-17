<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.sql.*"%>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Transfer Money Details..</title>
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
.style4 {
	color: #660000;
	font-size: 24px;
}
.style5 {color: #FF3300;
		font-size: 24px;
		}
.style53 {
	color: #660000;
	font-weight: bold;
}
.style54 {color: #000000}
		
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
		<h2 class="style10 style14"><span class="style4">Searched Product </span><span class="style5"><%=request.getParameter("p_Name")%></span><span class="style4"> Details..</span><strong></span></strong></h2>
		
          <div class="clr"></div>
          <p>&nbsp;</p>
          <p>&nbsp;</p>
		  <%
					
					try
					{
					String p_Name=request.getParameter("p_Name");
					String p_Mfg=request.getParameter("p_Mfg");
					String site=request.getParameter("site");
					
					int rank=Integer.parseInt(request.getParameter("rank"));
					
					int rankup=rank+1;
					
					String uname = (String)application.getAttribute("uname");
					
					String rankUp="update products set rank="+rankup+" where p_name='"+p_Name+"' ";
					connection.createStatement().executeUpdate(rankUp);
			
					String str1="select * from products where p_name='"+p_Name+"' and p_mfg='"+p_Mfg+"' and site='"+site+"' "; 
					Statement st1=connection.createStatement();
					ResultSet rs1=st1.executeQuery(str1);
					while ( rs1.next() )
					{
						int i=rs1.getInt(1);
				
						String uses = rs1.getString(5);
						String description = rs1.getString(6);
						String price = rs1.getString(3);
						String date = rs1.getString(8);	
						
							
							/*SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
							SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
									   
							String str2 = "insert into postsearch (user,p_name,categorie,keyword,dt) values('"+uname+"','"+p_Name+"','"+p_Categorie+"','"+keyword+"','"+dt+"')";
							connection.createStatement().executeUpdate(str2);
					*/
						
			%>
			      <table width="598" border="1" align="left" cellpadding="0" cellspacing="0" >
                    <tr >
                      <td width="186" rowspan="6" ><div class="style22 style4 style5" style="margin:10px 13px 10px 13px;" >
                          <div align="center"><a class="#" id="img1" href="#" >
                            <input  name="image" type="image" src="user_Pic.jsp?picture=<%="product"%>&id=<%=i%>" style="width:160px; height:250px;" />
                          </a> </div>
                      </div></td>
                      <td height="39" ><div align="center" class="style3 style73"><span class="style6 style53">Manufacture </span></div></td>
                      <td width="307"><div align="center" class="style3" style="color:#CC0066"><strong><%= p_Mfg%></strong></div></td>
                    </tr>
                    <tr >
                      <td height="37" ><div align="center" class="style6 style53"> Price </div></td>
                      <td><div align="center" class="style3" style="color:#000000"><strong><%= price%> </strong>Rs/-</div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style6 style53">Uses</div></td>
                      <td><div align="center" class="style3"></div>
                          <div align="center"><span class="style3">
                            <textarea name="textarea" cols="40" rows="5"><%= uses%></textarea>
                        </span></div></td>
                    </tr>
                    <tr >
                      <td height="47" ><div align="center" class="style6 style53"> Description </div></td>
                      <td><div align="center" class="style3"></div>
                      
                        
                              <div align="center"><span class="style3">
                              <textarea name="textarea" cols="40" rows="8"><%= description%></textarea>
                      </span></div></td>
                    </tr>
                    <tr >
                      <td height="46" ><div align="center" class="style6 style53">Date</div></td>
                      <td><div align="center" class="style3" style=" color:#000000"><strong><%= date%></strong></div></td>
                    </tr>
                    <tr >
                      <td width="97" height="56" ></td>
                      <td><br/>
					  <form method="post" action="PaymentType.jsp"><label>
                 
                    <div align="center">
					    <input type="hidden" value="<%=p_Name%>" name="p_Name"/>
					    <input type="hidden" value="<%=p_Mfg%>" name="p_Mfg"/>
						<input type="hidden" value="<%=price%>" name="price"/>
						<input type="hidden" value="<%=site%>" name="site"/>
				       <input type="submit" name="Submit3" value="Purchase By Cashless" />
                    </div>
                 </label></form><br/></td>
                    </tr>
					 
					
	            </table>
			   
			      <p>&nbsp;</p>
			      <p>
			       <%
		}
		connection.close();
	}
	catch(Exception e)
	{
		out.println(e.getMessage());
	}
%>
	             </p>
				   <div align="left">
				     <p><a href="SearchProducts.jsp" class="style11"></a></p>
				     
				     
				     <p align="center"><a href="SearchProducts.jsp" class="style11"><strong>Back</strong></a></p>
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