
<%@ include file="connect.jsp"%>


<%
try
{

ResultSet rs=connection.createStatement().executeQuery("select tname,rank,user from tweets ");
%><html>
<head>
<title>No.Of Disease</title>
<script type="text/javascript" src="sources/jscharts.js"></script>
</head>
<body>
<div id="graph">Loading graph...</div>
<script type="text/javascript">
var myData=new Array();
var colors=[];

<%
	int i=0;
	
	String s1=null,s2=null,s11=null;
	
	while(rs.next())
	{
	 s1=rs.getString(1);
	int s3=rs.getInt(2);
	s2=rs.getString(3);
	
	s11=s1+"("+s2+")";
	%>
	
	myData["<%=i%>"]=["<%= s11%>",<%= s3%>];
        
	<%
	i++;}
	%>
	
	var myChart = new JSChart('graph', 'bar');
	myChart.setDataArray(myData);
	myChart.setBarColor('#00CCFF');
	
	myChart.setBarOpacity(0.8);
	myChart.setSize(900,350);
	myChart.setBarBorderColor('#00CCFF');
	myChart.setBarValues(true);
	myChart.setTitleColor('#00CCFF');
	myChart.setAxisColor('#00CCFF');
	myChart.setAxisValuesColor('#00CCFF');
	myChart.draw();
	
</script>

</body>
</html>
<%
}
catch(Exception e)
{
e.printStackTrace();
}
%>

