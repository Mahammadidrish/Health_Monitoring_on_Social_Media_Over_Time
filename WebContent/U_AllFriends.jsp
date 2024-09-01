<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User All My Friends Details</title>
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
.style2 {color: #FF00FF}
.style3 {color: #000000}
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
          <li><a href="A_Login.jsp"><span>Admin</span></a></li>
          <li class="active"><a href="U_Login.jsp"><span>user</span></a></li>
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
        <h2><span class="style2">All My Friends Tracked</span></h2>
	  <p>&nbsp;</p>
	   <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse; margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#993366">
					  <td  width="120" height="31" align="center" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
  						
					  <td  width="100" height="31" align="center" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center"><b>View</b></div></td>
					</tr>
								
<%@ include file="connect.jsp" %>
					<%String user=(String )application.getAttribute("uname");
						
						int i=0,count=0;
						try 
						{
						   	String sql1="select * from req_res where (requestfrom='"+user+"'||requestto='"+user+"')&& status='Accepted'";
								Statement st2=connection.createStatement();
									ResultSet rs2=st2.executeQuery(sql1);
					   			while( rs2.next() )
								{
								i=rs2.getInt(1);
								String rf=rs2.getString(2);
								String rt=rs2.getString(3);
								if(rf.equalsIgnoreCase(user))
								{
								count++;
								
					%>
					<tr bgcolor="#99CCCC">
						<td  width="120" height="40" align="center" valign="middle" bgcolor="#00FFFF" style="color:#000000;"><span class="style4 style3">&nbsp;&nbsp;
				        <%out.println(rt);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" bgcolor="#00FFFF" style="color:#000000;">
							<a href="U_FriendProfile.jsp?type1=<%=rt%>" class="style3">more info..&nbsp;</a></td>
						<%
						//application.setAttribute("name",rt);
						}
						else 
						{
						count++;
						%>	
						<td  width="100" height="40" align="center" valign="middle" bgcolor="#00FFFF"><span class="style4 style3">&nbsp;&nbsp;
				        <%out.println(rf);%>
					  </span></td>
						<td  width="100" height="40"align="center" valign="middle" bgcolor="#00FFFF" style="color:#000000;">
							<a href="U_FriendProfile.jsp?type1=<%=rf%>" class="style3">more info..&nbsp;</a></td>
						<%//application.setAttribute("name",rf);
						}
						
						%>
			</tr>
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0){out.print("You Have No Friends");}
					
					%>
		</table>
		<h3 align="center">&nbsp;</h3>
	  <h2>&nbsp;</h2>
			<p align="right"><a href="U_Main.jsp" class="style2">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="searchform"></div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
          <div class="clr"></div>
          <ul class="sb_menu">
            <li><a href="U_Main.jsp">User Home</a></li>
            <li><a href="U_Login.jsp">Logout</a></li>
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
