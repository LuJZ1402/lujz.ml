#userQuery.jsp#
<body>
  <jsp:useBean id='user' class="com.witbridge.sabrina.testLogin"
    br>scope='request'></jsp:useBean>
    <table border='1' align='center'>
      <%
      list<testLogin> users = user.queryUser();
      for(testLogin newUser : users){
        %>
        <tr>
          <td><%=newUser.getUserName()%></td>
          <td><%=newUser.getPassWord()%></td>
          <td>
            <a href="userDele.jsp?id=<%newUser.getld()%>">修改密码</a>
            <td>
              <a href="userDele.jsp?id=<%newUser.getld()%>">删除</a>
            </td>
          </tr>
          <%
      }
      %>
    </table>
  </body>
