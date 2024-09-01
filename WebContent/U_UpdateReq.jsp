<%@ page import="java.sql.*,java.util.Random" %>
<%@ include file="connect.jsp" %>
<html><title> user status changing</title>
<body>
	<center>&nbsp;</center>
	<br><br><br>
	<%
  		int id =Integer.parseInt(request.getParameter("id"));
		String requestto=request.getParameter("fname");
		String requestfrom = (String)application.getAttribute("uname"); 
		
   		try {
	   		Random rr = new Random();
	   		String str = "Accepted";
				
				String sens="no",locin="no",phoin="no";
				
			Statement st1 = connection.createStatement();
       		String query1 ="update req_res set status='"+str+"' where id="+id+" ";
	   		st1.executeUpdate (query1);
				
	
			
			Statement st2 = connection.createStatement();
       		String query2 ="update hideinfo set fstatus='"+str+"' where fromname='"+requestto+"' and toname='"+requestfrom+"' ";
	   		st2.executeUpdate (query2);
		
       		
	   		connection.close();
       	}
      	catch(Exception e)
     	{
			out.println(e.getMessage());
   		}	response.sendRedirect("U_FriendReq.jsp");  
	%>
</body>
</html>

