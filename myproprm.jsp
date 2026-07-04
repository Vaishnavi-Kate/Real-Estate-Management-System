<%@ page contentType="text/html; charset=iso-8859-1" import="java.io.*,java.sql.*,com.*" language="java"%>
<%
	try{
		int count=0;
		String buyid = request.getParameter("PropBuyId"),
			   	rentid = request.getParameter("PropRentId"),
				flatmatesid=request.getParameter("PropFlatmatesId"),
				hostelid = request.getParameter("PropHostelId"),Query="";
		PreparedStatement ps=null;
		Connection con=DbConnect.getCon();

		if(buyid != null)
		{	ps = con.prepareStatement("Delete FROM tblbuy_properties where Property_Id = ?"); ps.setString(1, buyid);
			if(ps.executeUpdate() > 0)
			out.println("<script>alert('Successfully removed.'); location.href='myBuyProperties.jsp';</script>");
		}
		
		else if(rentid != null)
		{	ps = con.prepareStatement("Delete FROM tblrent_properties where Property_id = ?");	ps.setString(1, rentid);
			if(ps.executeUpdate() > 0)
			out.println("<script>alert('Successfully removed.'); location.href='myRentProperties.jsp';</script>");
		}
		
		else if(flatmatesid != null)
		{	ps = con.prepareStatement("Delete FROM tblflatmate_properties where Property_Id = ?");	ps.setString(1, flatmatesid);
			if(ps.executeUpdate() > 0)
			out.println("<script>alert('Successfully removed.'); location.href='myFlatmateProperties.jsp';</script>");
		}
		
		else if(hostelid != null)
		{	ps = con.prepareStatement("Delete FROM tblpg_hostel_properties where Property_Id = ?");	ps.setString(1, hostelid);
			if(ps.executeUpdate() > 0)
			out.println("<script>alert('Successfully removed.'); location.href='myHostelPG.jsp';</script>");
		}
		
		else{	out.println("<script>alert('Failed to remove.')</script>");	}
	}
	catch(Exception ex)
	{
		out.println("<script>alert('Try again later.')</script>");
	}
%>