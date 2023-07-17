<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.util.Date"%>
<%@ page import="com.oreilly.servlet.*,java.lang.*,java.text.SimpleDateFormat,java.io.*,javax.servlet.*, javax.servlet.http.*" %>
<%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Credit Card Request Status</title>
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
.style5 {color: #000000}
.style6 {font-size: 14px}
.style7 {color: #000000; font-size: 14px; }
.style8 {color: #660000}
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
		<h2 class="style8">Credit Card Request Status.. </h2>
		<p>
		   <%
			       
					String uname=(String)application.getAttribute("uname");
				    ArrayList list = new ArrayList();
					ServletContext context = getServletContext();

					String dirName =context.getRealPath("Gallery/");
					
										
								
					String paramname=null,bank=null,aname=null,ncname=null,addr=null ,crlimit=null,cslimit=null;
					 //int initialamount=0;
					
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							
							paramname =  (String)params.nextElement();
							
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("aname"))
							{
								aname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("ncname"))
							{
								ncname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("crlimit"))
							{
								crlimit=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cslimit"))
							{
								cslimit=multi.getParameter(paramname);
							}
							
						
							
						}
									
								String query1="select * from creditcardrequest  where a_name='"+uname+"' "; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
									
								if ( rs1.next() )
							   {
							   
												   %>
  </p>
  
  <p>&nbsp;</p>
  <p class="style5 style6">You Already Have a Credit Card, Make Use of It.. </p>
  <br/>
  <p> <a href="UserMain.jsp" class="style16">Back</a></p>
  <%
							   }
							  
								   else
								   {
								   
									SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
									SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");
									Date now = new Date();
												
									String strDate = sdfDate.format(now);
									String strTime = sdfTime.format(now);
									String dt = strDate + "   " + strTime;
								String a_no="Requested";
								String crn="Requested";
								
								int credit_taken=0;
								PreparedStatement ps1=connection.prepareStatement("insert into creditcard(a_no,crn,b_name,a_name,n_name,address,cr_limit,cs_limit,credit_taken) values(?,?,?,?,?,?,?,?,?)");
									
									ps1.setString(1,a_no);
									ps1.setString(2,crn);	
									ps1.setString(3,bank);
									ps1.setString(4,aname);
									ps1.setString(5,ncname);
									ps1.setString(6,addr);
									ps1.setString(7,crlimit);
									ps1.setString(8,cslimit);
									ps1.setInt(9,credit_taken);
												
									
								  	ps1.executeUpdate();
									
									
									
			PreparedStatement ps=connection.prepareStatement("insert into creditcardrequest(b_name,a_name,n_name,address,a_no,crn,cr_limit,cs_limit,date) values(?,?,?,?,?,?,?,?,?)");
									
									ps.setString(1,bank);
									ps.setString(2,aname);	
									ps.setString(3,ncname);
									ps.setString(4,addr);
									ps.setString(5,a_no);
									ps.setString(6,crn);
									ps.setString(7,crlimit);
									ps.setString(8,cslimit);
									ps.setString(9,dt);			
									
								   
									
														
									
									int x=ps.executeUpdate();
									if(x>0)
									{
									%>
  </p>
  <p class="style7">Credit Card Request Sent Successfully.. </p>
  <p>
    <%	
										
						%>
  </p>
  <p align="left"><a href="UserMain.jsp" class="style16">Back</a></p>
  <%
						
								}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
			
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