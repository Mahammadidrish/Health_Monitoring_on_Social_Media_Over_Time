<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User</title>
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
.style2 {font-size: 24px}
.style3 {font-size: 24px; color: #FF0000; }
.style4 {font-size: 24px; color: #FF0000; font-weight: bold; }
.style5 {color: #FFFFFF}
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
        <p>&nbsp;</p>
        <p class="style4">ReTweet / Comment for Your Friend Tweet... </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
       <table width="610" align="left"  cellpadding="0" cellspacing="0"  >
        <%@ include file="connect.jsp" %>
	
		<%
String user=(String)application.getAttribute("uname");    
	String s1,s2,s3,s4;
	int i=0,j=0,m=0,n=0;
	
	try 
	{
	String t_name=request.getParameter("name");
	String uname=request.getParameter("uname1");
	String id=request.getParameter("id");
	
	if(m==0){
	%>
			<tr>
		      <td  width="181" height="0" valign="baseline" bordercolor="#FF0000" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style8"><strong>Re Tweeted User</strong></div></td>
		      <td  width="272" height="0" valign="baseline" bordercolor="#FF0000" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style8"><strong>Tweet Name</strong></div></td>
			  
			  
		      <td   width="155" height="0" valign="baseline" bordercolor="#FF0000" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style8"><strong>Tweet Image</strong></div></td>
			</tr>
	<tr>
	<td  width="181" height="0" align="center" valign="middle"><div align="center" class="style3"><b><%=user%></b></div></td>
	 <td  width="272" height="0" align="center" valign="middle"><div align="center" class="style3"><b><%=t_name%></b></div></td>
	  <td align="center" valign="middle"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=id%>&type=<%="tweet"%>"/></td>
		</tr>
	
	<%}m=1;
	String sql="select * from comments where tweet_name='"+t_name+"' and username!='"+user+"'"; 
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while ( rs.next() )
	{
		i=rs.getInt(1);
		s1=rs.getString(2);
		s2=rs.getString(3);
		s3=rs.getString(4);
		s4=rs.getString(5);
		
		if(n==0){
		
		%>
		
				
				<tr>
				  <td  width="181" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9"><strong>Username</strong></div></td>
				  <td   width="272" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9"><strong>Tweet</strong></div></td>
				  <td  width="155" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style5 style9"><strong>Date</strong></div></td>
				</tr>
					<%}%>
				<tr>
						
	   
			  <td  width="181" height="36" align="center" valign="middle" style="color:#000000;"><div align="center">
			    <p>
			      <%out.println(s1);%>
			    </p>
			    <p>&nbsp; </p>
			  </div></td>	
			  <td  width="272" height="36" align="center" valign="middle"><div align="center"><%out.println(s3);%></div></td>
			  <td  width="155" align="center" valign="middle"><div align="center"><%out.println(s4);%></div></td>
		</tr>
					
					<%m=2;
				}
				%>
				 <form id="form1" name="form1" method="post" action="friendtweets.jsp?name=<%=t_name%>" onsubmit="return valid()" target="_top">
		<tr>
			  <td  width="181" height="102" align="center" valign="middle" style="color:#000000;"><span class="style11">Enter Your Tweet Comment</span>
		      <div align="center" class="style4 style2"></div></td>	
			  <td  width="272" height="102" align="center" valign="middle"><div align="center"><textarea name="cmt" rows="4" cols="40"></textarea></div></td>
			  <td  width="155" align="center" valign="middle"><div align="center"></div></td>
		</tr>
		<tr>
		  <td height="110" align="center" valign="middle" style="color:#000000;">Tweete Created User </td>
		  <td height="110" align="center" valign="middle"><input type="text" name="uname"  value="<%out.print(uname);%>" /></td>
		  <td align="center" valign="middle"><input type="submit" name="Submit" value="Re Tweet" /></td>
		  </tr>  
		 </form>
		 
		  <%
					
					connection.close();
					
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
      </table>
      </div>
      <div class="sidebar">
        <div class="searchform">
          <form id="formsearch" name="formsearch" method="post" action="#">
            <span>
            <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our ste:" type="text" />
            </span>
            <input name="button_search" src="images/search.gif" class="button_search" type="image" />
          </form>
        </div>
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
