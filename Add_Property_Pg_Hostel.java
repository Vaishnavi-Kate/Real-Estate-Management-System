package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/Add_Property_Pg_Hostel"})
public class Add_Property_Pg_Hostel
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  
  public Add_Property_Pg_Hostel() {}
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    PrintWriter out = response.getWriter();
    HttpSession session = request.getSession();
    
    int i = 0;
    
    String sharing = "";String foodincluded = "";
    String[] preften = request.getParameterValues("preften");
    String preftenvalues = String.join(",", preften);
    String propname = request.getParameter("propname");
    String propcate = request.getParameter("propcate");
    String proptype = request.getParameter("proptype");
    String floor = request.getParameter("floor");
    String buildarea = request.getParameter("buildarea");
    String rent = request.getParameter("rent");
    String deposit = request.getParameter("deposit");
    String avail = request.getParameter("avail");
    String availability_date = request.getParameter("availability_date");
    String housename = request.getParameter("housename");
    String colony = request.getParameter("colony");
    String city = request.getParameter("city");
    String state = request.getParameter("state");
    String pincode = request.getParameter("pincode");
    String desc = request.getParameter("desc");
    String building_age = request.getParameter("building_age");
    String numofbathrooms = request.getParameter("numofbathrooms");
    String furnishing = request.getParameter("furnishing");
    String parking = request.getParameter("parking");
    String Lift = request.getParameter("Lift");
    String Borewell = request.getParameter("Borewell");
    String Generator = request.getParameter("Generator");
    String Playground = request.getParameter("Playground");
    String Balconies = request.getParameter("Balconies");
    sharing = request.getParameter("sharing");
    foodincluded = request.getParameter("food");
    String address = housename + "," + colony;
    String Solar = request.getParameter("Solar");
    
    try
    {
      String sql = "insert into tblpg_hostel_properties(Owner_Id,Property_Name, Property_Category, Property_Type, Floor, Builtup_Area, No_Of_Bathrooms, Furnishing, Parking, Age_Of_Property, Tenant_Type,sharing,foodincluded, Deposit, Rent, Availability, AvailableDate, Address, State, City, Pincode, Posted_Date,Lift, Borewell, Generator, Playground, Balconies,Description,Solar) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,curdate(),?,?,?,?,?,?,?)";
      




      PreparedStatement ps = DbConnect.getCon().prepareStatement(sql, 1);
      ps.setString(1, (String)session.getAttribute("uid"));
      ps.setString(2, propname);
      ps.setString(3, propcate);
      ps.setString(4, proptype);
      ps.setString(5, floor);
      ps.setString(6, buildarea);
      ps.setString(7, numofbathrooms);
      ps.setString(8, furnishing);
      ps.setString(9, parking);
      ps.setString(10, building_age);
      ps.setString(11, preftenvalues);
      ps.setString(12, sharing);
      ps.setString(13, foodincluded);
      ps.setString(14, deposit);
      ps.setString(15, rent);
      ps.setString(16, avail);
      ps.setString(17, availability_date);
      ps.setString(18, address);
      ps.setString(19, state);
      ps.setString(20, city);
      ps.setString(21, pincode);
      ps.setString(22, Lift);
      ps.setString(23, Borewell);
      ps.setString(24, Generator);
      ps.setString(25, Playground);
      ps.setString(26, Balconies);
      ps.setString(27, desc);
      ps.setString(28, Solar);
      
      int check = ps.executeUpdate();
      ResultSet rs = ps.getGeneratedKeys();
      if (rs.next())
      {
        i = rs.getInt(1);
      }
      if (check > 0)
      {
        session.setAttribute("prodid", Integer.valueOf(i));
        out.print("<script>");
        out.print("alert('Successfully Inserted Details..'); location.href='Upload_Add_Property_Pg_Hostel_Images.jsp'; ");
        out.print("</script>");
      }
      else
      {
        out.print("<script>");
        out.print("alert('Try Later'); location.href='Add_Property_Pg_Hostel.jsp'; ");
        out.print("</script>");
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}
