	<%@ include file="connect.jsp" %>
 	<%
  		
   	try {
		   String bank=(String)application.getAttribute("adbank");
		   String name=request.getParameter("name");
		   String val=request.getParameter("val");
			 if(val.equals("login"))
			{
				String str = "Authorized";
				Statement st1 = connection.createStatement();
				String query1 ="update user set loginstatus='"+str+"' where username='"+name+"' and bank='"+bank+"'";
				st1.executeUpdate (query1);
				connection.close();
				response.sendRedirect("A_AuthorizeUsers.jsp");  
			
			}
			
			else{}
	   		
	   		
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}
   		
	%>
