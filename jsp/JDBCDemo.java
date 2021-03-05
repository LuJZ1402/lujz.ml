#JDBCDemo.java#
package com.witbridge.sabrina;
import java.sql.Connection;
import java.sql.preparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCDemo{
  public testLogin login(string name,string pwd){
    Connection conn = null;
    preparedStatement ps = null;
    ResultSet result + null;
    testLogin t = null;
    try{
      conn = DBUtil.getConn();
      String sql ='select * from login where userName = ? and password = ?';
      //用？作为占位，--匹配
      ps = conn.preparedStatement(sql);//preparedStatement需要传参数，预处埋
      ps.setString(1,name);//序号从1开始
      ps.setString(2,pwd);
      result = ps.executeQuery();//初始状态指向第一条结果的前面
      if (result.next()) {
        t = new testLogin();
        t.setUserName(result.getString('userName'));
        t.setPassWord(result.getString('password'));
      }
    }catch (SQLException e){
      e.printStackTrace();
    }finally{
      DBUtil.close(conn,ps);//关闭连接
    }
    return t;
  }
}
