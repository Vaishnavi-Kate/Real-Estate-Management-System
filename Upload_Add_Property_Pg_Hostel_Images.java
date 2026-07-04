package com;

import com.oreilly.servlet.MultipartRequest;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet({"/Upload_Add_Property_Pg_Hostel_Images"})
public class Upload_Add_Property_Pg_Hostel_Images
  extends HttpServlet
{
  String img1 = null; String img2 = null; String img3 = null; String img4 = null;
  

  File f1 = new File("E://Project_Workspace//SearchMyHomeProj//WebContent//Pg_Hostel_Property_images//");
  
  public Upload_Add_Property_Pg_Hostel_Images() {}
  
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    HttpSession session = request.getSession();
    int pid = ((Integer)session.getAttribute("prodid")).intValue();
    String path = "E://Project_Workspace//SearchMyHomeProj//WebContent//Pg_Hostel_Property_images//";
    MultipartRequest m = new MultipartRequest(request, path, 104488960);
    
    if (m.getFilesystemName("img1") != null)
    {
      i1 = m.getFile("img1");
      rename = new File(path + "FontImg" + pid + ".jpg");
      i1.renameTo(rename);
      img1 = rename.getName();
      out.print("Img 1 Name := " + img1 + "<br />");
    }
    
    if (m.getFilesystemName("img2") != null)
    {
      i2 = m.getFile("img2");
      rename = new File(path + "BackImg" + pid + ".jpg");
      i2.renameTo(rename);
      img2 = rename.getName();
      out.print("Img 2 Name := " + img2 + "<br />");
    }
    
    if (m.getFilesystemName("img3") != null)
    {
      i3 = m.getFile("img3");
      rename = new File(path + "LeftImg" + pid + ".jpg");
      i3.renameTo(rename);
      img3 = rename.getName();
      out.print("Img 3 Name := " + img3 + "<br />");
    }
    
    if (m.getFilesystemName("img4") != null)
    {
      i4 = m.getFile("img4");
      rename = new File(path + "RightImg" + pid + ".jpg");
      i4.renameTo(rename);
      img4 = rename.getName();
      out.print("Img 4 Name := " + img4 + "<br />");
    }
    try
    {
      String sql = "update tblpg_hostel_properties set Pic1=?, pic2=?, Pic3=?, Pic4=? where Property_id=?";
      PreparedStatement ps = DbConnect.getCon().prepareStatement(sql);
      ps.setString(1, img1);
      ps.setString(2, img2);
      ps.setString(3, img3);
      ps.setString(4, img4);
      ps.setInt(5, pid);
      int check = ps.executeUpdate();
      
      if (check > 0)
      {
        session.setAttribute("prodid", null);
        out.print("<script>");
        out.print("alert('Successfully Uploaded Images..'); location.href='Add_Property_Pg_Hostel.jsp';");
        out.print("</script>");
      }
      else
      {
        out.print("<script>");
        out.print("alert('Try Later'); location.href='Upload_Add_Property_Pg_Hostel_Images.jsp';");
        out.print("</script>");
      }
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
  }
  
  private static final long serialVersionUID = 1L;
  File rename;
  File i1;
  File i2;
  File i3;
  File i4;
}
