<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ include file="connect.jsp" %>
<%@ page import="java.util.Date" %>
<%@ page import ="javax.crypto.Cipher" %>
<%@ page import ="javax.crypto.spec.SecretKeySpec" %>
<%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<%@ page import="org.bouncycastle.util.encoders.Base64"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>SamplePage</title>
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
.style4 {color: #666600}
.style6 {font-size: 12px}
.style7 {color: #FF3300}
.style8 {font-size: 12px; color: #666600; font-weight: bold; }
.style10 {color: #660000; font-weight: bold; }
.style11 {font-weight: bold}
.style12 {color: #FF0000}
.style13 {color: #000000}
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
          <h2 class="style3">Search Products by Keyword</h2>
          <div class="clr"></div>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <form action="SearchProducts.jsp" method="post" id="leavereply">
                    <p>&nbsp;</p>
                    <table align="center" style="margin:0 0 0 30px;">
                      <tr>
                        <td width="174"><div align="center" class="style3">
                            <div align="right" class="style12">
                              <div align="center" class="style82 style7"><strong>Enter  Keyword</strong></div>
                            </div>
                        </div></td>
                        <td width="152"><div align="left">
                            <input type="text" name="keyword" />
                        </div></td>
                        <td width="155"><input name="submit" type="submit" style="width:50px; height:25px;" value="GO"/></td>
                      </tr>
                      <tr>
                        <td colspan="3"><div class="style2">
                            <div align="center" class="style8"> ( searching content Based on Product Description)</div>
                        </div></td>
                      </tr>
                    </table>
			        <p class="style44">&nbsp;</p>
              

              <p align="center"><a href="UserMain.jsp" class="style11">Back</a></p>
          </form>
        </div>
          <div class="clr"></div>
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
        <div class="mainbar">
		<div class="article">
          <h2><span class="style3">Products Found.. </span></h2>
          
            <p>
              <%
  String input="",l_Input="",p_Name="",p_Desc="",p_Desc1="",p_Price="",p_Mfg="",site=""; 
			int i=0,j=0,k=0,a1=0,rank=0;

try
{	
						String uname = (String)application.getAttribute("uname");
								
								
								input= request.getParameter("keyword");
								if(!input.equals(""))	
								{
								
								l_Input = input.toLowerCase();
		
						SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
						SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
							
							Date now = new Date();
							String strDate = sdfDate.format(now);
							
							String strTime = sdfTime.format(now);
							String dt = strDate + "   " + strTime;
								 
								
								String str = "select * from products";
								Statement st=connection.createStatement();
								ResultSet rs = st.executeQuery(str);
								
								while(rs.next())
								{
								    p_Name = rs.getString(2);
									p_Price = rs.getString(3);
									p_Mfg = rs.getString(4);
									p_Desc = rs.getString(6);  
								    rank   = rs.getInt(9);
									site   = rs.getString(10); 
								
									
								
									p_Desc1 = p_Desc.toLowerCase(); 
									 
									if (p_Desc1.indexOf(l_Input)>=0)
									{
 			
 		  
												
						if(a1==0)
						{
									%>
            </p>
				  <p>&nbsp;</p>
				  <table width="506" border="1" align="center">
              <tr>
                <td colspan="4" align="center" class="style8">Results Found in Products</td>
              </tr>
              <tr>
                <td width="130" align="center" valign="middle"><span class="style10">Product Name  </span></td>
                <td width="192" align="center" valign="middle"><span class="style10">Product Price</span></td>
                
              </tr>
              <%}a1=1;%>
              <tr>
                <td height="55" align="center" valign="middle"><div align="center" class="style13"><strong><%=p_Name%></strong></div></td>
				<td height="55" align="center" valign="middle"><div align="center" class="style13"><strong><%=p_Price%></strong> Rs/- </div></td>
                
                
                <td width="97" height="55"><div align="center">
                    <p class="style50"><a href="SearchProductsDetails.jsp?p_Name=<%=p_Name%>&amp;keyword=<%=l_Input%>&amp;p_Mfg=<%=p_Mfg%>&amp;rank=<%=rank%>&amp;site=<%=site%>" class="style56 style30 style7"><strong>View Details</strong></a></p>
                </div></td>
              </tr>
              <%	}
						  
						}%>
            </table>
				 
					
            <p>&nbsp;</p>
			
           
             <blockquote>
						      <p class="style72">
              <%

				
			
		
		}	
	
		else
		{
			%>
            </p>
            <h3 align="center" class="style66 style72 style48">&nbsp;</h3>
            <h3 align="center" class="style66 style72 style48 style6 style12">Please Enter Correct Keyword!!</h3>
            <%
		}
	}
	

catch(Exception e)
{
	e.printStackTrace();
}
%>
            </p>
			</blockquote>
			
			
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