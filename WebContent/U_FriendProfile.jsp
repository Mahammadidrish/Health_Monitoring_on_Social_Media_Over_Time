<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User Friends Profile</title>
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
.style2 {color: #000000}
.style3 {color: #FF00FF}
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
        <h2> <span class="style3">Friend profile</span></h2>
	  <p>&nbsp;</p>
	    <table width="600" border="3"  cellpadding="0" cellspacing="0"  style="border-collapse: collapse;margin:10px 10px 10px 10px; font-family:Verdana, Arial, Helvetica, sans-serif; font-size:14px;">
          <%@ include file="connect.jsp" %>
          <%
					String user=(String )application.getAttribute("uname");
						
						String user1=request.getParameter("type1");
						String s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13;
						int i=0;
						try 
						{
						   	String query="select * from user where username='"+user1+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
								i=rs.getInt(1);
								s1=rs.getString(2);
								s2=rs.getString(4);
								s3=rs.getString(5);
								s4=rs.getString("location");
								s5=rs.getString(6);//dob
								s6=rs.getString(7);//gender
							
								s8=rs.getString("company");
								s9=rs.getString("Address");
								s10=rs.getString(10);

									
						
								
					%>
          <tr>
            <td rowspan="13" ><div style="margin:10px 13px 10px 13px;" > <a class="#" id="img1" href="#" >
                <input  name="image" type="image" src="images.jsp?id=<%=i%>&value=<%="user"%>" style="width:200px; height:230px;"  />
            </a> </div></td>
          </tr>
	      <tr/>        
          <tr>
            <td  width="150" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3" style="margin-left:20px;"><b >Username</b></div></td>
            <td  width="300" valign="middle" height="40" style="color:#000000;"><div align="left" class="style5 style4 style2" style="margin-left:20px;">
                <%out.println(s1);%>
            </div></td>
          </tr>
          <tr>
            <td  width="120" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3" style="margin-left:20px;"><b>E-Mail</b></div></td>
            <td  width="72" valign="middle" height="40" style="color:#000000;"><div align="left" class="style4 style4 style2" style="margin-left:20px;">
              <%out.println(s2);%>
            </div></td>
          </tr>
          <tr>
            <td  width="100" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3" style="margin-left:20px;"><strong >Mobile</strong></div></td>
            <td  width="82" valign="middle" height="40"><div align="left" class="style4 style4 style2" style="margin-left:20px;">
              <%out.println(s3);%>
            </div></td>
          </tr>
          <tr>
            <td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3" style="margin-left:20px;"><strong>Date Of Birth</strong></div></td>
            <td  width="82" align="left" valign="middle" height="40"><div align="left" class="style4 style4 style2" style="margin-left:20px;">
              <%out.println(s5);%>
            </div></td>
          </tr>
          <tr>
            <td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left " class="style3" style="margin-left:20px;"><strong>Gender</strong></div></td>
            <td  width="82" align="left" valign="middle" height="40"><div align="left" class="style4 style4 style2" style="margin-left:20px;">
              <%out.println(s6);%>
            </div></td>
          </tr>
          <tr>
            <td   width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3" style="margin-left:20px;"><strong >Location</strong></div></td>
            <td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left">
              <div align="left" class="style4 style4 style2" style="margin-left:20px;">
                  <%out.println(s4);%>
              </div>
            </div></td>
          </tr>
          <tr>
            <td   width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3" style="margin-left:20px;"><strong >Blood Group</strong></div></td>
            <td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left">
              <div align="left" class="style4 style4 style2" style="margin-left:20px;">
                  <%out.println(s10);%>
              </div>
            </div></td>
          </tr>
          <tr>
            <td   width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3" style="margin-left:20px;"><strong >Company Name</strong></div></td>
            <td  width="100" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left">
              <div align="left" class="style4 style4 style2" style="margin-left:20px;">
                  <%out.println(s8);%>
              </div>
            </div></td>
          </tr>
          <%
					
					
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
					}
					%>
        </table>
	    <p align="right"><a href="U_AllFriends.jsp">Back</a></p>
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
