<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ include file="connect.jsp" %>
                    <%@ page import="java.io.*"%>
                    <%@ page import="java.util.*" %>
                    <%@ page import="java.util.Date" %>
                    <%@ page import="com.oreilly.servlet.*"%>
                    <%@ page import ="java.text.SimpleDateFormat" %>
                    <%@ page import ="javax.crypto.Cipher" %>
                    <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
                    <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
                    <%@ page import ="java.security.KeyPairGenerator,java.security.KeyPair,java.security.Key" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Adding Bank Status..</title>
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
          <h2 class="style4">Adding Bank Status..</h2>
          <div class="clr"></div>
		  <%
			       
   				    String site= (String)application.getAttribute("esite");
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String bname=null,address=null,location=null,pin=null,contact=null,mail=null,image=null,bin = "",uses=null, paramname=null;
					
					FileInputStream fs=null;
					
					File file1 = null;	
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						Enumeration params = multi.getParameterNames();
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("bname"))
							{
								bname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								address=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("loc"))
							{
								location=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pin"))
							{
								pin=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("cno"))
							{
								contact=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mail"))
							{
								mail=multi.getParameter(paramname);
							}
							
							
							}
							
						int f = 0;
						Enumeration files = multi.getFileNames();	
						while (files.hasMoreElements()) 
						{
							paramname = (String) files.nextElement();
							
							if(paramname != null)
							{
								f = 1;
								image = multi.getFilesystemName(paramname);
								String fPath = context.getRealPath("Gallery\\"+image);
								file1 = new File(fPath);
								fs = new FileInputStream(file1);
								list.add(fs);
							
								
							}		
						}
						
					
						FileInputStream fs1 = null;
			 			String query1="select * from bank where b_name='"+bname+"' "; 
						Statement st1=connection.createStatement();
						ResultSet rs1=st1.executeQuery(query1);
						
							
					if ( rs1.next() )
					   {
					   		%>
                  <p class=" style1" style="color:#660000">&nbsp;</p>
                  <p class=" style1" style="color:#000000">Bank Name Already Exist..</p>
                  <p class="style41"><a href="AdminMain.jsp" class="style7 style46"><strong>Back</strong></a></p>
                    <span class="style41">
                    <%
				
					   }
					   else
					   {
					   
					   SimpleDateFormat sdfDate = new SimpleDateFormat("dd/MM/yyyy");
		   	           SimpleDateFormat sdfTime = new SimpleDateFormat("HH:mm:ss");

			           Date now = new Date();

			           String strDate = sdfDate.format(now);
			           String strTime = sdfTime.format(now);
			           String date = strDate + "   " + strTime;
						
					   
					    int rank =0;
						

						 
					PreparedStatement ps=connection.prepareStatement("insert into bank(b_name,b_addr,b_loc,b_pin,b_cno,b_mail,b_image,date) values(?,?,?,?,?,?,?,?)");
						
						ps.setString(1,bname);
						ps.setString(2,address);	
						ps.setString(3,location);
						ps.setString(4,pin);	
				        ps.setString(5,contact);
						ps.setString(6,mail);	
						ps.setBinaryStream(7,(InputStream)fs, (int)(file1.length()));
						ps.setString(8,date);
						
						
						ps.executeUpdate();
					   
						%>
                    </span>
					 <p class="style1" style="color:#660000">&nbsp;</p>
					 <p class="style1" style="color:#000000">Bank Added Successfully..</p>
					 <span class="style41">
                    </p>
                    </span>
<p class="style41">&nbsp; </p>
                    <p class="style41"><a href="AdminMain.jsp" class="style7 style46"><strong>Back</strong></a><a href="A_AddPosts.jsp" class="style7 style42"></a></p>
                    <span class="style41">
                    <%
			
					
					
					
					
						}
					}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
			
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