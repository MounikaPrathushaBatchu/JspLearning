<%@ page import = "java.sql.*" %>
<%!
String uname;
String upwd;

Connection con;
PreparedStatement pst;
ResultSet rs;
%>

<%
try {
	uname = request.getParameter("uname");
	upwd = request.getParameter("upwd");
	session.setAttribute("operation","Login");
	
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.230:1521:orcl", "training", "training");
	pst = con.prepareStatement("select * from reg_users where uname = ? and upwd = ?");
	pst.setString(1,uname);
	pst.setString(2,upwd);
	rs = pst.executeQuery();
	
	boolean b = rs.next();
	RequestDispatcher rd = null;
	if(b == true) {
		rd = application.getRequestDispatcher("/success.jsp");
		rd.forward(request,response);
	} else {
		rd = application.getRequestDispatcher("/failure.jsp");
		rd.include(request,response);
	}
	
} catch(Exception e) {
	e.printStackTrace();
}
%>