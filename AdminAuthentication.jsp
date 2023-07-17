<title>User Authentication Page</title>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ include file="connect.jsp"%>
<%
	String name = request.getParameter("adminid");
	String pass = request.getParameter("pass");
	String bank = request.getParameter("bank");

	try {
					application.setAttribute("adname", name);
					application.setAttribute("adbank", bank);
			
					String sql = "SELECT * FROM bankadmin where (username='"+name+"' and password='"+pass+"') and bank='"+bank+"' ";
					Statement stmt = connection.createStatement();
					ResultSet rs = stmt.executeQuery(sql);
					if (rs.next()==true) 
					{
		
									response.sendRedirect("AdminMain.jsp");
							
					}
					else
					{
						response.sendRedirect("AdminRe-Login.jsp");
					}
				
				

	}
	 catch (Exception e)
	  {
		out.print(e);
		e.printStackTrace();
	}
%>

