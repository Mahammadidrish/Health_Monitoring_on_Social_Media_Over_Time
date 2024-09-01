<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin Friends Request And Responses</title>
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
        <div id="coin-slider"> <a href="#"><img src="images/slide1.jpg" width="960" height="360" alt="" /><span><big>Health Monitoring on Social Media over Time</big></span></a> <a href="#"><img src="images/slide2.jpg" width="960" height="360" alt="" /><span><big>Health Monitoring on Social Media over Time</big></span></a> <a href="#"><img src="images/slide3.jpg" width="960" height="360" alt="" /><span><big>Health Monitoring on Social Media over Timeb</big></span></a> </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
    </div>
  </div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
         <h2><span class="style2">All Request and Response Details...</span></h2>
             
            <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;  margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
					<tr bgcolor="#99FF99">
					  <td  width="142" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Username</b></div></td>
					  <td  width="141" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><strong>Request Sent To </strong></div></td>
  					
					  <td   width="115" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><strong>Status</strong></div></td>
					  <td  width="188" height="0" valign="baseline" style="color: #2c83b0;"><div align="center"><b>Date &amp; Time </b></div></td>
					</tr>
					<%@ include file="connect.jsp" %>
					<%
String s1,s2,s3,s4,s5,s6,s7,s8,s9;
int i=0,count=0;
try 
{
	String query="select * from req_res"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(query);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		count++;
					%>
							<tr bgcolor="#FFFFFF">
								<td  width="142" height="0" valign="baseline" "><span class="style6">&nbsp;&nbsp;
						        <%out.println(s1);%>
							  </span></td>	
								<td  width="141" height="0" valign="baseline"><span class="style6">&nbsp;&nbsp;
						        <%out.println(s2);%>
							  </span></td>
								<td  width="115" height="0" valign="baseline"><span class="style6">&nbsp;&nbsp;
						        <%out.println(s3);%>
							  </span></td>
							  <td  width="188" height="0" valign="baseline"><span class="style6">&nbsp;&nbsp;
					          <%out.println(s4);%>
							  </span></td>
			  </tr>
					<%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					
					if(count==0)
				{out.print("There Is No Friend Request and response Found");}
					%>
                  <tr bgcolor="#FFFFFF">
						<td height="0"  valign="baseline"><span class="style6"></span></td>
						<td height="0"  valign="baseline"><span class="style6"></span></td>
						<td height="0"  valign="baseline"><span class="style6"></span></td>
						<td height="0"  valign="baseline"><span class="style6"></span></td>
			  </tr>
		</table>
<p align="right"><a href="A_Main.jsp" class="style2">Back</a></p>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
          </form>
        </div>
        <div class="gadget">
          <h2 class="star"><span>Sidebar</span> Menu</h2>
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
