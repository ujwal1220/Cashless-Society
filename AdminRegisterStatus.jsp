<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
		  <%@ include file="connect.jsp" %>
          <%@ page import="java.io.*" %>
          <%@ page import="java.util.*" %>
          <%@ page import="com.oreilly.servlet.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>BankAdminRegistrationStatus</title>
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
.style4 {font-size: 14px}
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
          <div class="clr"></div>
          <div class="clr"></div>
          <label for="name">
          
         <%
			       
					
				    ArrayList list = new ArrayList();
					
					ServletContext context = getServletContext();
					
					String dirName =context.getRealPath("Gallery/");
					
					String paramname=null,bank="",aname="",pass="",email="",mno="",addr="",dob="",gender="",pincode="",location="",image=null,cloud=null,bin = "";
				
					FileInputStream fs=null;
					
					File file1 = null;	
					
					try {
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024);	
						
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							
							if(paramname.equalsIgnoreCase("adminid"))
							{
								aname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pass"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mobile"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("address"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dob=multi.getParameter(paramname);
							} 
							if(paramname.equalsIgnoreCase("gender"))
							{
								gender=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("bank"))
							{
								bank=multi.getParameter(paramname);
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
							
								String ss=fPath;
								FileInputStream fis = new FileInputStream(ss);
								StringBuffer sb1=new StringBuffer();
								int i = 0;
								while ((i = fis.read()) != -1) 
								{
									if (i != -1)
									 {
										//System.out.println(i);
										String hex = Integer.toHexString(i);
										// session.put("hex",hex);
										sb1.append(hex);
										
									
										String binFragment = "";
										int iHex;
			 
										for(int i1= 0; i1 < hex.length(); i1++)
										{
											iHex = Integer.parseInt(""+hex.charAt(i1),16);
											binFragment = Integer.toBinaryString(iHex);
			
											while(binFragment.length() < 4)
											{
												binFragment = "0" + binFragment;
											}
											bin += binFragment;
							
						                }
									}	
									
								}
								
							}		
						}
						
						if(aname.equals("")||pass.equals("")||email.equals("")||mno.equals("")||addr.equals("")||dob.equals("")||gender.equals("--Select--")||bank.equals("Select"))
						{
								  %> 
								    <p>&nbsp;</p>
								    <p align="center" class="style40">&nbsp;</p>
								    <p align="center" class="style40"><span class="header_01 style37 style4 style5"><strong>Please Enter All Values..</strong></span></p>
								    <p align="center"><a href="AdminRegister.jsp" class="style39">Back</a></p>
								  <%
								  
						 }
						else
						{
								FileInputStream fs1 = null;
								String query1="select * from bankadmin  where username='"+aname+"' and bank='"+bank+"'"; 
								Statement st1=connection.createStatement();
								ResultSet rs1=st1.executeQuery(query1);
										
								if ( rs1.next() )
							   {
										%>
										</p>
										</label>
										</span>
										
														
										<p align="center" class="style37 style18 style40">&nbsp;</p>
										<p align="center" class="style37 style18 style40 style4 style5"><strong>Bank Admin  Name Already Exist..</strong></p>
										<p align="center"><a href="AdminRegister.jsp" class="style39">Back</a></p>
										
										<%
										
								}
								else
								{
					   
					   
					   					PreparedStatement ps=connection.prepareStatement("insert into bankadmin(bank,username,password,email,mobile,address,dob,gender,image) values(?,?,?,?,?,?,?,?,? )");
						ps.setString(1,bank);
						ps.setString(2,aname);
						ps.setString(3,pass);
						ps.setString(4,email);	
						ps.setString(5,mno);
						ps.setString(6,addr);
						ps.setString(7,dob);
						ps.setString(8,gender);
				
						ps.setBinaryStream(9, (InputStream)fs, (int)(file1.length()));	
				       
						
						if(f == 0)
							ps.setObject(9,null);
						else if(f == 12)
						{
							fs1 = (FileInputStream)list.get(0);
							ps.setBinaryStream(9,fs1,fs1.available());
						}	
						int x=ps.executeUpdate();
						if(x>0)
						{
						%>
                  <br/>
                <p align="center" class="style38">&nbsp;</p>
                <p align="center" class="style38 style4 style5"><strong>Registration Successfull..</strong></p>
                <p align="center"><a href="AdminLogin.jsp" class="style39">Back</a>
                      <%
			
					}}}}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
			%>
                </p>
         
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
