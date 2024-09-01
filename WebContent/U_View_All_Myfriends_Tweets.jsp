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
.style2 {
	font-size: 24px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #FFFFFF}
.style4 {font-weight: bold}
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
        <p class="style2">View_All_Myfriends_Tweets....</p>
        <p class="style2">&nbsp;</p>
        <p class="style2">&nbsp;</p>
        <table width="660" border="2" align="left"  cellpadding="0" cellspacing="0" bordercolor="#FF0000"  >
        <%@ include file="connect.jsp" %>
	
		<%
	  String user=(String)application.getAttribute("uname");
    
	String s1,s2,s3,s4,s5,s6,s7,rto;
	int i=0,j=0,m=0;
	
	try 
	{
	
	ArrayList al=new ArrayList();
	ArrayList al1=new ArrayList();
	String sql="select requestto from req_res where(requestfrom='"+user+"' and status='Accepted')";
	Statement st=connection.createStatement();
	ResultSet rs=st.executeQuery(sql);
	while(rs.next())
	{
		rto=rs.getString(1);
		al1.add(rto);
	}
	String sql1="select requestfrom from req_res where(requestto='"+user+"' and status='Accepted')";
	Statement st1=connection.createStatement();
	ResultSet rs1=st1.executeQuery(sql1);
	while(rs1.next())
	{
		rto=rs1.getString(1);
		al1.add(rto);
	}
	
	for(j=0;j<al1.size();j++)
	{

	String sql2="select * from tweets where user='"+al1.get(j)+"'"; 
	Statement st2=connection.createStatement();
	ResultSet rs2=st2.executeQuery(sql2);
	while(rs2.next())
	{
		i=rs2.getInt(1);
		s2=rs2.getString(2);
		s3=rs2.getString(3);
		s4=rs2.getString(4);
		s5=rs2.getString(5);
		s6=rs2.getString(6);
		s7=rs2.getString(7);
		al.add(s2);
		
		if(m==0){
		%>
		
				<tr>
				<td  width="89" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style10"><strong>Created User </strong></div></td>
				  <td  width="100" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style10"><strong>Tweet Image </strong></div></td>
				  <td  width="74" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style10"><strong>Health Tweet Name</strong></div></td>
				  <td   width="175" height="0" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style10 style3"><strong>Disease Description</strong></div></td>
				  <td  width="125" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style10"><strong>Created Date and Time </strong></div></td>
			      <td  width="81" valign="baseline" bgcolor="#FF0000" style="color: #2c83b0;"><div align="center" class="style3 style10"><strong>Comments</strong></div></td>
				</tr>
					<%}%>
				<tr>
				  <td  width="89" height="110" align="center" valign="middle"><div align="center"><%out.println(s7);%></div></td>	
	   	<td width="100"><input  name="image" type="image" style="width:100px; height:100px;" src="profile_pic.jsp?id=<%=i%>&type=<%="tweet"%>"/></td>
			  <td  width="74" height="110" align="center" valign="middle" style="color:#000000;"><div align="center"><%out.println(s2);%></div></td>	
			  <td  width="175" height="110" align="center" valign="middle" bgcolor="#FF0000"><div align="center" class="style3"><strong>
			    <%out.println(s4);%>
			  </strong></div></td>
			  <td  width="125" align="center" valign="middle"><div align="center"><%out.println(s5);%></div></td>
			  <td  width="81" height="110" align="center" valign="middle"><div align="center"><a href="U_ReTweet.jsp?name=<%=s2%>&id=<%=i%>&uname1=<%=s7%>">ReTweet</a></div></td>
		</tr>
					
					<%m=2;
				}
				}
					if(al.isEmpty())
					{
					%>
					<h3 class=" style4">Sorry..!! There is no tweets found</h3>
					<%}
					 String msg=(String)application.getAttribute("msg");
					 if(msg!=null){
					 %><h3 class="style8 style4"> <%=msg%></h3> 
					  <%
					 application.removeAttribute("msg");
					}
					
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
