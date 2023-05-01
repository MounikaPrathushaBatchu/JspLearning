<%@ page import = "java.sql.*" %>
<%!
String uname;
String upwd;
String uemail;
String umobile;

Connection con;
PreparedStatement pst;
ResultSet rs;
%>

<%
try {
	uname = request.getParameter("uname");
	upwd = request.getParameter("upwd");
	uemail = request.getParameter("uemail");
	umobile = request.getParameter("umobile");
	session.setAttribute("operation","Registration");
	
	Class.forName("oracle.jdbc.OracleDriver");
	con = DriverManager.getConnection("jdbc:oracle:thin:@192.168.10.230:1521:orcl", "training", "training");
	pst = con.prepareStatement("select * from reg_users where uname = ?");
	pst.setString(1,uname);
	rs = pst.executeQuery();
	
	boolean b = rs.next();
	RequestDispatcher rd = null;
	if(b == true) {
		rd = application.getRequestDispatcher("/existed.jsp");
		rd.forward(request,response);
	} else {
		pst = con.prepareStatement("insert into reg_users values (?,?,?,?)");
		pst.setString(1, "uname");
		pst.setString(2, "upwd");
		pst.setString(3, "uemail");
		pst.setString(4, "umobile");
		int rowCount = pst.executeUpdate();
		if(rowCount == 1){
			rd = application.getRequestDispatcher("/success.jsp");
			rd.forward(request,response);
		} else {
			rd = application.getRequestDispatcher("/failure.jsp");
			rd.forward(request,response);
		}
	}	
} catch(Exception e) {
	RequestDispatcher rd = null;
	e.printStackTrace();
	try {
		rd = application.getRequestDispatcher("/failure.jsp");
		rd.forward(request,response);
	} catch (Exception e1) {
		e1.printStackTrace();
	}
}
%>