<%@ page language="java" import="java.sql.*,com.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%
	try{
	String name = request.getParameter("name"),
		   phone= request.getParameter("phone"), 
		   phone1 = request.getParameter("phone1"), 
		   email = request.getParameter("email"), 
		   address = request.getParameter("address"), 
		   city = request.getParameter("city"), 
		   pincode = request.getParameter("pincode"), 
		   state = request.getParameter("state"), 
		   country = request.getParameter("country");
	
	 	  out.println(name+"', '"+ phone +"', '"+phone1+"', '"+email+"', '"+address+"', '"+city+"', '"+pincode+"', '"+state+"', '"+country);
		   
	 	  PreparedStatement ps=DbConnect.getCon().prepareStatement("update tbluser_registrations set Name=?, Cell_No1=?, Cell_No2=?, Email_Id=?, Address=?, City=?, Pincode=?, State=?, Country=? where User_id = ?");
	 	  ps.setString(1, name);
	 	  ps.setString(2, phone);
		  ps.setString(3, phone1);
		  ps.setString(4, email);
		  ps.setString(5, address);
		  ps.setString(6, city);
		  ps.setString(7, pincode);
		  ps.setString(8, state);
		  ps.setString(9, country);
		  ps.setString(10,(String)session.getAttribute("uid"));
		  
		  if(ps.executeUpdate() > 0)
		  {
			  out.println("<script>alert('Profile successfully updated.'); location.href='my-profile.jsp';</script>");
		  }
		  
	}catch(Exception ex)
	{
		out.println("<script>alert('Try again later.')</script>");
	}
%>