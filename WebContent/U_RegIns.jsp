<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>user Register Insert</title>
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
.style3 {color: #006600}
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
	  <h2><span class="style2">User Register Status</span></h2>
         <%@page import="com.oreilly.servlet.*,java.sql.*,java.lang.*,java.text.SimpleDateFormat,java.util.*,java.io.*,javax.servlet.*, javax.servlet.http.*" %>


<%@ page import="java.util.Date" %>

 <%@ include file="connect.jsp" %>
 <%@ page import ="java.security.Key" %>
 <%@ page import ="javax.crypto.Cipher" %> 
 <%@ page import ="java.math.BigInteger" %>
 <%@ page import ="javax.crypto.spec.SecretKeySpec" %>
 <%@ page import ="org.bouncycastle.util.encoders.Base64" %>
 <%@ page import ="java.security.MessageDigest,java.security.DigestInputStream" %>
 <%@ page import ="java.io.PrintStream,java.io.FileOutputStream,java.io.FileInputStream,java.io.BufferedInputStream" %>


<%
					
  try 
  {
					ServletContext context = getServletContext();
					String dirName =context.getRealPath("Gallery/");
					String paramname=null;
					String image=null;
					String uname=null;     
    				String pass=null;	
					String email=null;
					String mno=null;
					String gen=null;
					String dateOfBirth=null;
					String addr=null;
					String cname=null;
					String sname=null,bg=null;
					String loc=null,loc1=null;
					String lat=null,lat1=null;
					String lon=null,lon1=null;
					FileInputStream fs=null;
					File file1 = null;	
					
						MultipartRequest multi = new MultipartRequest(request, dirName,	10 * 1024 * 1024); // 10MB
						Enumeration params = multi.getParameterNames();
						
						while (params.hasMoreElements()) 
						{
							paramname = (String) params.nextElement();
							if(paramname.equalsIgnoreCase("name"))
							{
								uname=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("pwd"))
							{
								pass=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("email"))
							{
								email=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("mob"))
							{
								mno=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("dob"))
							{
								dateOfBirth=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("gen"))
							{
								gen=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("add"))
							{
								addr=multi.getParameter(paramname);
							}
							if(paramname.equalsIgnoreCase("loc"))
							{
								loc=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("bg"))
							{
								bg=multi.getParameter(paramname);
							}
							
							if(paramname.equalsIgnoreCase("cname"))
							{
								cname=multi.getParameter(paramname);
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
							}		
						}
				
						
						String str = "select * from user where username='"+uname+"' ";
						Statement st = connection.createStatement();
						ResultSet rs = st.executeQuery(str);
						
						if(rs.next())
						{
						%>
						<h3 class="style2">User Name Already Exist</h3>
						<p align="center"><a href="U_Register.jsp">Back</a></p><%
						
						}
			 			else
						{
					   
						PreparedStatement ps=connection.prepareStatement("insert into user(username,password,email,mobile,dob,gender,address,location,bgroup,company,status,image) values(?,?,?,?,?,?,?,?,?,?,?,?)");
						ps.setString(1,uname);
						ps.setString(2,pass);
						ps.setString(3,email);	
						ps.setString(4,mno);
						ps.setString(5,dateOfBirth);
						ps.setString(6,gen);
						ps.setString(7,addr);
						ps.setString(8,loc);
						
						ps.setString(9,bg);
						;
						ps.setString(10,cname);
						ps.setString(11,"Waiting");
						ps.setBinaryStream(12, (InputStream)fs, (int)(file1.length()));
							
						if(f == 0)
							ps.setObject(19,null);
					
						
						int x=ps.executeUpdate();
					
					%>
					<h3 class="style3">User Registered Successfully</h3>
					<p align="center"><a href="U_Login.jsp">Login..</a> <a href="U_Register.jsp">Back</a></p><%
						}
						}
					catch (Exception e) 
					{
						out.println(e.getMessage());
					}
				%>
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
            <li><a href="index.html">Home</a></li>
            <li><a href="A_Login.jsp">Admin</a></li>
            <li><a href="U_Login.jsp">User</a></li>
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
