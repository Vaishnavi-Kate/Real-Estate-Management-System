package com;

import java.sql.SQLException;

public class DbConnect {
  public DbConnect() {}
  
  public static java.sql.Connection getCon() { java.sql.Connection con = null;
    try {
      Class.forName("com.mysql.jdbc.Driver");
      con = java.sql.DriverManager.getConnection("jdbc:mysql://localhost:3306/dbsearchmyhome", "root", "root");
    }
    catch (ClassNotFoundException e) {
      e.printStackTrace();
    }
    catch (SQLException e) {
      e.printStackTrace();
    }
    
    return con;
  }
}
