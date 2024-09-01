
<%@ include file="connect.jsp"%>


<%
try
{

ResultSet rs=connection.createStatement().executeQuery("select count(tname),tname from tweets group by tname");
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
	
	String s1=null;
	
	while(rs.next())
	{
	 s1=rs.getString(2);
	int s3=rs.getInt(1);
	
	%>
	
	myData["<%=i%>"]=["<%= s1%>",<%= s3%>];
        
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

