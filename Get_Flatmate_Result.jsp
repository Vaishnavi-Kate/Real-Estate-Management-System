<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String Property_Category="%",Cities="%",Prop_Type="%",No_Bath="%",Max_Area="0",Min_Area="0",Max_Rent="0",Min_Rent="0",Lift="%",Borewell="%",Generator="%",Playground="%",Balconies="%";

Property_Category = request.getParameter("Property_Category");
Cities = request.getParameter("Cities");
Prop_Type = request.getParameter("Prop_Type");
No_Bath = request.getParameter("Bath");
if(request.getParameter("maxvaluearea") != null)
{
	String maxarea = request.getParameter("maxvaluearea");
	Max_Area = maxarea.substring(0,maxarea.indexOf(" "));
}

if(request.getParameter("minvaluearea") != null && request.getParameter("minvaluearea") != "0")
{
	String minarea = request.getParameter("minvaluearea");
	Min_Area = minarea.substring(0,minarea.indexOf(" "));
}

if(request.getParameter("maxvaluerent") != null)
{
	String maxrent = request.getParameter("maxvaluerent").replaceAll("[,]","");
	
	Max_Rent = maxrent.substring(3);
}

if(request.getParameter("minvaluerent") != null && request.getParameter("minvaluerent") != "0")
{
	String minrent = request.getParameter("minvaluerent").replaceAll("[,]","");
	
	Min_Rent = minrent.substring(3);
}

if(request.getParameter("Lift") != null)
{
	Lift = request.getParameter("Lift");
}

if(request.getParameter("Borewell") != null)
{
	Borewell = request.getParameter("Borewell");
}

if(request.getParameter("Generator") != null)
{
	Generator = request.getParameter("Generator");
}

if(request.getParameter("Playground") != null)
{
	Playground = request.getParameter("Playground");
}

if(request.getParameter("Balconies") != null)
{
	Balconies = request.getParameter("Balconies");
}

try
{
	String sql = "SELECT * FROM tblflatmate_properties where Property_Category like ? and Property_Type like ? and Builtup_Area between ? and ? and No_Of_Bathrooms like ? and Rent between ? and ? and City like ? and Lift like ? and Borewell like ? and Generator like ? and Playground like ? and Balconies like ?";
	PreparedStatement ps = DbConnect.getCon().prepareStatement(sql);
	ps.setString(1, Property_Category);
	ps.setString(2, Prop_Type);
	ps.setString(3, Min_Area);
	ps.setString(4, Max_Area);
	ps.setString(5, No_Bath);
	ps.setString(6, Min_Rent);
	ps.setString(7, Max_Rent);
	ps.setString(8, Cities);
	ps.setString(9, Lift);
	ps.setString(10, Borewell);
	ps.setString(11, Generator);
	ps.setString(12,Playground);
	ps.setString(13, Balconies);
	String uid = (String)session.getAttribute("uid");
	
	ResultSet rs = ps.executeQuery();
	while(rs.next())
	{
	%>
		<!-- Listing Item -->
		<div class="listing-item">

			<a href="Property_page.jsp?PropFlatmatesId=<%=rs.getString(2) %>" class="listing-img-container">

				<div class="listing-badges">
					<span>For Rent</span>
				</div>

				<div class="listing-img-content">
					<span class="listing-price">RS. <%=rs.getString(14) %> <i>monthly</i></span>
					<%
							if(uid != null)
							{
								ps = DbConnect.getCon().prepareStatement("select * from tblshortlisted_properties where Property_id=? and User_Id=? and Property_Type='Flatmate' ");
								ps.setString(1, rs.getString(2));
								ps.setString(2, uid);
								ResultSet rs1=ps.executeQuery();
								if(rs1.next())
								{
								}
								else
								{
								%>
									<span class="like-icon with-tip" data-tip-content="Shortlist Property" id="<%=rs.getString(2) %>" title="Flatmate" onclick="addToShortlist(this.id,this.title);"></span>	
								<%	
								}
							}
							%>
				</div>

				<img src="Flatmate_Property_images/<%=rs.getString(21) %>" alt="">
			</a>
			
			<div class="listing-content">

				<div class="listing-title">
					<h4><a href="Property_page.jsp?PropFlatmatesId=<%=rs.getString(2) %>"><%=rs.getString(3) %></a></h4>
					<a >
						<i class="fa fa-map-marker"></i>
						<%=rs.getString(17) %>, <%=rs.getString(19) %>-<%=rs.getString(20) %>, <%=rs.getString(18) %>
					</a>

					<a href="Property_page.jsp?PropFlatmatesId=<%=rs.getString(2) %>" class="details button border">Details</a>
				</div>

				<ul class="listing-details">
					<li><%=rs.getString(7) %> sq ft</li>
					<li><%=rs.getString(5) %></li>
					<li><%=rs.getString(8)%> Bathroom</li>
					<li></li>
				</ul>
<!-- 
				<div class="listing-footer">
					<a href="#"><i class="fa fa-user"></i> Harriette Clark</a>
					<span><i class="fa fa-calendar-o"></i> 2 days ago</span>
				</div>
-->
			</div>

		</div>
		<!-- Listing Item / End -->
	<%	
	}
}
catch(Exception e){
	e.printStackTrace();
}

%>