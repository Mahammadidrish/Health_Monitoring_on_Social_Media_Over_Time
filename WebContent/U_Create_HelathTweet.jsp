<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>U_Create_HelathTweet</title>
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
	font-size: 36px;
	color: #FF0000;
	font-weight: bold;
}
.style3 {color: #FF0000}
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
        <p class="style2">Create Health Tweet ....</p>
        <p class="style2">&nbsp;</p>
      <form name="s" action="U_Create_HelathTweet1.jsp" method="post" enctype="multipart/form-data"  onSubmit="return valid()"  ons target="_top">	   
                <label for="name"></label>
                <table width="660" align="left">
                  <tr>
                    <td width="194" height="35" bgcolor="#FFFF00"><span class="style3 style6"><strong>Health Tweet Name</strong></span></td>
                    <td width="454"><input id="name" name="tname" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="38" bgcolor="#FFFF00"><span class="style3 style6"><strong>Select Tweet image </strong></span></td>
                    <td><input type="file" id="pic" name="pic" class="text" /></td>
                  </tr>
                  <tr>
                    <td height="39" bgcolor="#FFFF00"><span class="style3 style6"><strong>
                      <label for="label">Health Details Description</label>
                    </strong></span></td>
                    <td><textarea id="desc" name="desc" rows="3" cols="50"></textarea></td>
                  </tr>
                  
                  <tr>
                    <td><p>&nbsp;</p>
                    <div align="right">
                      <input name="submit" type="submit" value="Create Health Tweet " />
                    </div></td>
                  <td><p>&nbsp;</p>                  </tr>
                </table>
                
            <p>&nbsp;</p>
                
	    </form>
        <p class="style2">&nbsp;</p>
        <p class="style2">&nbsp; </p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
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
