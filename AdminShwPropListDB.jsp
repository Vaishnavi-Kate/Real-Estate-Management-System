<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
    
	<%
	String i= request.getParameter("proptype");
	
	if(i.equals("1"))
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbsearchmyhome","root","root");
			PreparedStatement stmt1 = con.prepareStatement("select * from tblbuy_properties");
			ResultSet rs = stmt1.executeQuery();

			int j=0;
				while(rs.next()) 
				{%>
					<tr>
					   <td><%=j+1%></td>
					   <td>saurabh</td>
					   <td><%=rs.getString(3) %></td>
					   <td><%=rs.getString(22) %></td>
					   <%if(rs.getString(22).equals("Posted")){ %>
					   
					   <td><button> Active</button></td><%}
					   else{ %>
					   <td><button> Deactive</button></td><%}%>
					</tr>
				<%}
		}
			catch(Exception e){e.printStackTrace();}
	}
%>
