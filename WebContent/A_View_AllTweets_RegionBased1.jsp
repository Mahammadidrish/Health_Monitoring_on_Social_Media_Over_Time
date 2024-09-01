<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>View All Tweets  Based On Region</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/script.js"></script>
<script type="text/javascript" src="js/coin-slider.min.js"></script>
<style type="text/css">
<!--
.style1 {font-size: 36px}
.style2 {
	color: #FF0000;
	font-size: 24px;
	font-weight: bold;
}
.style3 {color: #0000FF}
.style4 {color: #FF0000}
.style6 {font-size: 18}
-->
</style>
</head>
<body>
<div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.html"><span class="style1">Health Monitoring on Social Media over Time</span></a></h1>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
        <ul>
          <li><a href="index.html"><span>Home Page</span></a></li>
          <li class="active"><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li><a href="U_Login.jsp"><span>user</span></a></li>
        </ul>
      </div>
      <div class="clr"></div>
      <div class="slider">
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Health Monitoring on Social Media over Time</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Health Monitoring on Social Media over Time</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Health Monitoring on Social Media over Time</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p class="style2"><span class="style6">View All Tweets  Based On ::<span class="style3"> <%=(String)request.getParameter("region")%> :: <span class="style4">Region....</span></span></span></p>
        <p class="style2">&nbsp;</p>
        <table width="600" border="2" align="left"  cellpadding="0" cellspacing="0" bordercolor="#FF0000"  >
        <%@ include file="connect.jsp" %>
	
		<%
	
	
	String rname=request.getParameter("region");
    
	String s1,s2,s3,s4,s5,s6,s7;
	int i=0,j=0,m=0;
	
	try 
	{
	
	
	String query="select * from tweets where uregion='"+rname+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s2=rs.getString(2);
		s3=rs.getString(3);
		s4=rs.getString(4);
		s5=rs.getString(5);
		s6=rs.getString(6);
		s7=rs.getString(7);
		
	
		if(m==0){
		%>
		
				<tr>
				 <td  width="108" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style3 style4"><strong>Created User </strong></div></td>
				  <td  width="109" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style3 style4"><strong>Tweet Image </strong></div></td>
				  <td  width="96" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style3 style4"><strong>Tweet Name</strong></div></td>
				  <td   width="150" height="0" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style3 style4"><strong>Description</strong></div></td>
				  <td  width="123" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style3 style4"><strong>Created Date and Time </strong></div></td>
				  
				  <td  width="123" valign="baseline" bgcolor="#FFFF00" style="color: #2c83b0;"><div align="center" class="style8 style3 style4"><strong>View Discussion Comments </strong></div></td>
				</tr>
					<%}%>
				<tr>
		
	    <td  width="108" height="110" align="center" valign="middle" style="color:#000000;"><div align="center" class="style4 style9"><strong><a href="A_UserProfile1.jsp?name=<%=s7%>"><%=s7%></a></strong></div></td>	
	   	<td width="109"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&type=<%="tweet"%>"/></td>
			  <td  width="96" height="110" align="center" valign="middle" style="color:#000000;"><div align="center" class="style4 style9"><strong>
			    <%out.println(s2);%>
			  </strong></div></td>	
			  <td  width="150" height="110" align="center" valign="middle"><div align="center" class="style4 style9"><strong>
			    <%out.println(s4);%>
			  </strong></div></td>
			  <td  width="123" align="center" valign="middle"><div align="center" class="style4 style9"><strong>
			    <%out.println(s5);%>
			  </strong></div></td>
			  
			  <td  width="123" align="center" valign="middle"><div align="center" class="style4 style9"><strong>
			<a href="A_Tweets_Comments.jsp?name=<%=s2%>&uname=<%=s7%>"> View </a>
			  </strong></div></td>
			</tr>
					
					<%m=2;
				}
					
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="gadget">
          <h2 class="star"><span>Admin</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="A_Main.jsp">Admin Home</a></li>
            <li><a href="A_Login.jsp">Logout</a></li>
          </ul>
        </div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="fbg"></div>
  <div class="footer">
    <div class="footer_resize">
      <div style="clear:both;"></div>
    </div>
  </div>
</div>
<div align=center></div>
</body>
</html>
