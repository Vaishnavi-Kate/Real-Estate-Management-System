<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" import="java.sql.*,com.*"%>
    
    <%
    String sql = "";
    PreparedStatement ps = null;
    ResultSet rs = null;		
    %>
    <!-- Sidebar
		================================================== -->
		<div class="col-md-4">
		<form action="Get_Rent_Result.jsp" method="post">
		
			<div class="sidebar sticky right">

				<!-- Widget -->
				<div class="widget margin-bottom-40">
					<h3 class="margin-top-0 margin-bottom-35">Available Search Attributes</h3>

				

					<!-- Row -->
					<div class="row with-forms">
						<!-- Type -->
						<div class="col-md-12">
							<select data-placeholder="Any Type" name="Property_Category" class="chosen-select-no-single" >
								<option value="%">Any Type</option>
								<%
								sql = "SELECT distinct(Property_Category) FROM tblpg_hostel_properties;";
								ps = DbConnect.getCon().prepareStatement(sql);
								rs = ps.executeQuery();
			
								while(rs.next())
								{
								%>
								<option><%=rs.getString(1) %></option>
								<%} %>
								
							</select>
						</div>
					</div>
					<!-- Row / End -->


				

					<!-- Row -->
					<div class="row with-forms">
						<!-- Cities -->
						<div class="col-md-12">
							<select data-placeholder="All Cities" name="Cities" class="chosen-select" >
								<option value="%">All Cities</option>
								<%
								sql = "SELECT distinct(City) FROM tblpg_hostel_properties;";
								ps = DbConnect.getCon().prepareStatement(sql);
								rs = ps.executeQuery();
			
								while(rs.next())
								{
								%>
								<option><%=rs.getString(1) %></option>
								<%} %>
			
							</select>
						</div>
					</div>
					<!-- Row / End -->


					<!-- Row -->
					<div class="row with-forms">

						<!-- Min Area -->
						<div class="col-md-6">
							<select  class="chosen-select-no-single" name="Prop_Type">
								<option value="%">Any BHK</option>	
								<%
								sql = "SELECT distinct(Property_type) FROM tblpg_hostel_properties;";
								ps = DbConnect.getCon().prepareStatement(sql);
								rs = ps.executeQuery();
			
								while(rs.next())
								{
								%>
									<option><%=rs.getString(1) %></option>
								<%} %>
			
							</select>
						</div>

						<!-- Max Area -->
						<div class="col-md-6">
							<select class="chosen-select-no-single" name="Bath">
								<option value="%">Any Baths</option>	
								<option value="all">Any BHK</option>	
								<%
								sql = "SELECT distinct(No_Of_Bathrooms) FROM tblpg_hostel_properties;";
								ps = DbConnect.getCon().prepareStatement(sql);
								rs = ps.executeQuery();
			
								while(rs.next())
								{
								%>
								<option><%=rs.getString(1) %></option>
								<%} %>
							</select>
						</div>

					</div>
					<!-- Row / End -->

					<br>

					<!-- Area Range -->
					<div class="range-slider">
						<label>Area Range</label>
											<%
								sql = "SELECT max(Builtup_Area) as maxarea FROM tblpg_hostel_properties";
								ps = DbConnect.getCon().prepareStatement(sql);
								rs = ps.executeQuery();
								int max=0;
								
								if(rs.next())
								{
									
									max = rs.getInt(1);
									
								} %>
					
						<div id="area-range" data-min="0" data-max="<%=max %>" data-unit="sq ft"></div>
						<div class="clearfix"></div>
					</div>

					<br>
					
					<!-- Price Range -->
					<div class="range-slider">
					<%
								sql = "SELECT max(Rent) as maxarea FROM tblpg_hostel_properties";
								ps = DbConnect.getCon().prepareStatement(sql);
								rs = ps.executeQuery();
								int maxrent=0;
								
								if(rs.next())
								{
									
									maxrent = rs.getInt(1);
									
								} %>
					
						<label>Rent Range</label>
						<div id="price-range" data-min="0" data-max="<%=maxrent %>" data-unit="RS."></div>
						<div class="clearfix"></div>
					</div>



					<!-- More Search Options -->
					<a href="#" class="more-search-options-trigger margin-bottom-10 margin-top-30" data-open-title="Additional Features" data-close-title="Additional Features"></a>

					<div class="more-search-options relative">

						<!-- Checkboxes -->
						<div class="checkboxes one-in-row margin-bottom-10">				
							<input id="check-2" type="checkbox" name="Lift" value="1">
							<label for="check-2">Lift</label>

							<input id="check-3" type="checkbox" name="Borewell" value="1">
							<label for="check-3">Borewell</label>

							<input id="check-4" type="checkbox" name="Generator" value="1">
							<label for="check-4">Generator</label>

							<input id="check-5" type="checkbox" name="Playground" value="1">
							<label for="check-5">Playground</label>	

							<input id="check-6" type="checkbox" name="Balconies" value="1">
							<label for="check-6">Balconies</label>
						</div>
						<!-- Checkboxes / End -->

					</div>
					<!-- More Search Options / End -->

					<button type="submit" class="button fullwidth margin-top-30">Search</button>
					
					<a href="Rent_List_Display.jsp">Reset All Attributes</a>
		
				</div>
				<!-- Widget / End -->

			</div>
			</form>
		</div>
		<!-- Sidebar / End -->
		
