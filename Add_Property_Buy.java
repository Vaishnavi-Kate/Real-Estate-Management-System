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

@WebServlet({"/Add_Property_Buy"})
public class Add_Property_Buy
  extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  
  public Add_Property_Buy() {}
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    PrintWriter out = response.getWriter();
    HttpSession session = request.getSession();
    
    int i = 0;
    String propname = request.getParameter("propname");
    String propcate = request.getParameter("propcate");
    String proptype = request.getParameter("proptype");
    String floor = request.getParameter("floor");
    String buildarea = request.getParameter("buildarea");
    String price = request.getParameter("price");
    
    
    
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
    String address = housename + "," + colony;
    String Solar = request.getParameter("Solar");
    
    try
    {
      String sql = "insert into tblbuy_properties(Owner_Id,Property_Name, Property_Category, Property_Type, Floor, Builtup_Area, No_Of_Bathrooms, Furnishing, Parking, Age_Of_Property, Price, Address, State, City, Pincode, Posted_Date,Lift, Borewell, Generator, Playground, Balconies,Description,Solar) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,curdate(),?,?,?,?,?,?,?)";
    
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
      
      if(price != "")
      {
    	  ps.setString(11, price);
    	  System.out.println("Price: "+price);
      }
      else {
    	  ps.setString(11, "0");
    	  System.out.println("Price: 0");
      }
      
      ps.setString(12, address);
      ps.setString(13, state);
      ps.setString(14, city);
      ps.setString(15, pincode);
      ps.setString(16, Lift);
      ps.setString(17, Borewell);
      ps.setString(18, Generator);
      ps.setString(19, Playground);
      ps.setString(20, Balconies);
      ps.setString(21, desc);
      ps.setString(22, Solar);
      System.out.println(sql);
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
        out.print("alert('Successfully Inserted Details..'); location.href='Upload_Add_Property_Buy_Images.jsp'; ");
        out.print("</script>");
      }
      else
      {
        out.print("<script>");
        out.print("alert('Try Later'); location.href='Add_Property_Buy.jsp'; ");
        out.print("</script>");
      }
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
  }
}
