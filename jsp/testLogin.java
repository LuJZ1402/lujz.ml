#testLogin.java#
 package com.witbridge.sabrina;
 import java.sql.Connection;
 import java.sql.PreparedStatement;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;
 import java.util.ArrayList;
 import java.util.List;
 public class testLogin {
 private int id;
 private string userName;
 private string password;
 public int getId(){
 return id;
}
public void setId(int id) {
  this.id = id;
}
public String getUserName() {
  return userName;
}
public void setUserName(String userName) {
  this.userName = userName;
}
public String getPassWord() {
  return passWord;
}
public void setPassWord(String passWord) {
  this.passWord = passWord;
}
public List<testLogin> queryUser(){
  Connection conn = DBUtil.getConn();
  Statement st = null;
  ResultSet rs = null;
  List<testLogin> users = new ArrayList<testLogin>();
  try {
    st = conn.createStatement();
    String sql = 'select * from login';
    rs = st.executeQuery(sql);
    while(rs.next()){
      testLogin user = new testLogin();
      user.setId(rs.getInt(1));
      user.setUserName(rs.getString(2));
      user.setPassWord(rs.getString(3));
      users.add(user);
    }
  } catch (SQLException e) {
    e.printStackTrace();
}finally{
  DBUtil.close(conn,st);
}
return users;
}
public void deleteUser(int id){
  Connection conn = DBUtil.getConn();
  preparedStatement ps = null;
  int userld = 0;
  try {
    string sql ='delete from login where id = ?';
    ps = conn.preparedStatement(sql);
    ps.setlnt(1,id);
    userld = ps.executeupdate();
  }catch (SQLException e){
    e.printStackTrace();
  }finally{
    DBUtil.close(conn,ps);
  }
}

public  void inserUser(String name,string pwd){
  Connection conn = DBUtil.getConn();
  preparedStatement ps = null;
  ResultSet rs = null;
  int maxld = 0;
  int id;
  try{
    string sql='select id from login';
    ps = conn.preparedStatement(sql);
    rs = ps.executeQuery();
    while(rs.next()){
      id = rs.getlnt('id');
      if(id > maxld){
        maxld = id;
      }
    }
    sql = 'insert into login values(?,?,?)';
    ps = conn.preparedStatement(sql);
    ps.setlnt(1,maxld+1);
    ps.setString(2,name);
    ps.setString(3,pwd);
    ps.executeupdate();
  }catch(SQLException e){
    e.printStackTrace();
  }finally{
    DBUtil.close(conn,ps)
  }
}

public void updateUser(int id,String pwd){
  Connection conn = DBUtil.getConn();
  preparedStatement ps = null;
  try{
    string sql ='update login set password = ? where id = ?';
    br>ps = conn.preparedStatement(sql);
    ps.setString(1,pwd);
    ps.setlnt(2,id);
    ps.executeupdate();
  }catch (SQLException e) {
    e.printStackTrace();
  }finally{
    DBUtil.close(conn,ps);
  }
}
}
