<%@page import="com.DbConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String prodid,type,uid;
prodid = request.getParameter("prodid");
type = request.getParameter("type");
uid = (String)session.getAttribute("uid");
System.out.println(prodid);
System.out.println(type);
System.out.println(uid);
PreparedStatement ps= null;
int i = 0;
try{
	ps = DbConnect.getCon().prepareStatement("insert into tblshortlisted_properties(Property_id, Property_Type, User_Id) values(?,?,?)");
	ps.setString(1, prodid);
	ps.setString(2, type);
	ps.setString(3, uid);
	i = ps.executeUpdate();
	if(i>0)
	{
		out.print("Success");
	}
	else
	{
		out.print("Fail");
	}
}catch(Exception e)
{e.printStackTrace();}
%>