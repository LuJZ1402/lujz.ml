#DBUtil.java#
package com.witbridge.sabrina;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
public  class DBUtil{
  private static String url = 'jdbc://localhost:3306/test';
  private static String userName = 'root';
  private static String password = 'root';
  private static Connection conn = null;

  public  static Connection getConn(){
    try{
      class.forName('com.mysql.jdbc.Driver');
      conn = DriverManager.getConntion(url,userName,password);
    }catch (classnotfounexception e){
      e.printStackTrace();
    }catch (SQLException e){
      e.printStackTrace();
    }
    return conn;
  }

  public static void close(Connection conn,Statement st){
    if (conn != null) {
      try{
        conn.close();
      }catch(SQLException e){
        e.printStackTrace();
      }
    }
    if (st !=null) {
      try{
        st.close();
      }catch(SQLException e){
        e.printStackTrace();
      }
    }
  }
}
