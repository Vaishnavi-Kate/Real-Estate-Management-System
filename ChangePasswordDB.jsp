<%@ page language="java" import="java.io.*,java.sql.*,com.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	try{
		
		String oldpass = request.getParameter("oldpass"), 
			   newpass = request.getParameter("newpass"), 
			   confirmpass = request.getParameter("confirmpass");

		PreparedStatement ps= DbConnect.getCon().prepareStatement("Select * from tbluser_registrations where Email_Id=? and Password=?");
		
		ps.setString(1, (String)session.getAttribute("username"));
		
		ps.setString(2, oldpass);
		ResultSet rs= ps.executeQuery();
		
		if(rs.next())
		{
			ps = DbConnect.getCon().prepareStatement("Update tbluser_registrations set Password = ? Where Email_Id= ?");
			ps.setString(1, newpass);
			ps.setString(2, (String)session.getAttribute("username"));
			System.out.println(ps.toString());
			int count =ps.executeUpdate();
			
			if(count > 0)
			{
				out.println("<script>alert('Password have changed.'); location.href='ChangePassword.jsp';</script>");
			}
		}
		else { out.println("<script>alert('Invalid old password.'); location.href='ChangePassword.jsp';</script>"); }
	}
	catch(Exception e) { out.println("<script>alert('Try again later.'); location.href='ChangePassword.jsp'; </script>"); }
%>
