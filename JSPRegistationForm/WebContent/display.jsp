<%!int eid;
	String ename;
	float esal;
	String eaddr;%>

<%
	try {
		eid = Integer.parseInt(request.getParameter("eid"));
		ename = request.getParameter("ename");
		esal = Float.parseFloat(request.getParameter("esal"));
		eaddr = request.getParameter("eaddr");

	} catch (Exception e) {
		e.printStackTrace();
	}
%>

<html>
<body>
	<h2 style="color: blue" align="center">Software Company</h2>
	<h4 style="color: green" align="center">Employee Registration Form</h4>
	<center>
		<table border="1">
			<tr>
				<td>Employee Id</td>
				<td><%=eid%></td>
			</tr>
			<tr>
				<td>Employee Name</td>
				<td><%=ename%></td>
			</tr>
			<tr>
				<td>Employee Salary</td>
				<td><%=esal%></td>
			</tr>
			<tr>
				<td>Employee Address</td>
				<td><%=eaddr%></td>
			</tr>
		</table>
	</center>
</body>
</html>