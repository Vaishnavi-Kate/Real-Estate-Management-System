<%@ page import="com.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*"  pageEncoding="ISO-8859-1"%>
<% 
// 	try{
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			PreparedStatement ps= DbConnect.getCon().prepareStatement("Select * from tbluser_registrations where Email_Id=? and Password= ?");
			ps.setString(1, username);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next())
			{ 
				session.setAttribute("username", rs.getString("Email_Id"));
				session.setAttribute("Name", rs.getString("Name"));
				session.setAttribute("uid", rs.getString("user_id"));
				session.setAttribute("image", "images/users/default.png");
				session.setAttribute("AccountType", rs.getString("AccountType")); 	%>
				<script>
					alert("Login successful...!");
					location.href = "index.jsp";
				</script>
		<%	} 
			else 
			{ %>
				<script>
					alert("Invalid username or password");
					location.href = "login-register.jsp";
				</script>
		<%  }
		//}
		//catch(Exception e){
		//out.println("<script>alert('Try again later.'"+e+")</script>");
	//} %> 