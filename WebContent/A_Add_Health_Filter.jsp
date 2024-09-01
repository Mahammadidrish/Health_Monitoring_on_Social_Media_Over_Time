<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Admin</title>
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
.style2 {color: #FFFFFF}
.style3 {font-weight: bold}
.style4 {font-weight: bold}
.style5 {
	color: #FF0000;
	font-size: 18px;
	font-weight: bold;
}
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
        <h2>Add Tweet Health Filter Details...</h2>
	    <p>&nbsp;</p>
	  <form id="form1" name="form1" method="post" action="A_Add_Health_Filter1.jsp">
            <p>&nbsp;</p>
            <table width="385" border="2">
              <tr>
                <td width="181" height="47" bgcolor="#FF0000"><span class="style2 style11"><strong>Select Filter Category </strong></span></td>
                <td width="186"><select name="tclass">
                  <option>Select Filter Category</option>
                  <option>Over Weight</option>
                  <option>Injuries</option>
                  <option>Cancer</option>
                  <option>Blood Pressure</option>
                  <option>Sugar</option>
                  <option>Thyroid</option>

                </select>                </td>
              </tr>
              <tr>
                <td height="52" bgcolor="#FF0000"><span class="style2 style11"><strong>Enter Filter Name </strong></span></td>
                <td><input type="text" name="fname" /></td>
              </tr>
              <tr>
                <td height="52">&nbsp;</td>
                <td><p>
                  <input type="submit" name="Submit" value="Add" />
                  <input type="reset" name="Submit2" value="Reset" />
                </p></td>
              </tr>
            </table>
            <p>&nbsp;</p>
            <p><a href="AdminMain.jsp"></a></p>
            <p class="style13 style5">Existing Filter Details .... </p>
        </form>
		  
		   <%@ include file="connect.jsp" %>
         <table width="417" border="1"  cellpadding="0" cellspacing="0"  >
        <tr bgcolor="#99CCCC">
          <td  width="253" height="56" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style3 style12 style7" >
            <p>&nbsp;</p>
            <p><strong>Health Category</strong></p>
          </div></td>
          <td  width="237" height="56" valign="baseline" bgcolor="#FFFFFF" style="color: #2c83b0;"><div align="center" class="style3 style12 style7" >
            <p>&nbsp;</p>
            <p><strong>Health Filter Name </strong></p>
          </div></td>
        </tr>
         
		 
		   
            <%
					 
				
					  String s0="",s1="",s2="",s3="",s4="",s5="",s6="";
					  int i=1,j=0,count=0,rank=0,k=0;
					
						try 
						{
							
						   	String query="select * from filter "; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		while ( rs.next() )
					   		{
								
								s0=rs.getString(1);
								s1=rs.getString(2);
								
								
								
								
					%>
           <tr>
              <td height="33"  valign="middle" bgcolor="#FF0000">
                  <div align="center" class="style4 style12 style14 style8 style2" >
                    <div align="center">
                    <%out.println(s0);%>
                </div>
             </div></td>
			  
			  <td height="33"  valign="middle" bgcolor="#FF0000">
                  <div align="center" class="style4 style12 style14 style9 style2" >
                    <div align="center">
                    <%out.println(s1);%> 
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
		  
        <p>&nbsp;</p>
        <p>&nbsp;</p>
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
