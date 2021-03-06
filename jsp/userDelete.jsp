#userDelete.jsp#
<body>
  <jsp:useBean id="user" class="com.witbridge.sabrina.testLogin"scope='request'></jsp:useBean>
  <jsp:setProperty name='user' property='*'/>
  <%
  int id = integer.parselnt(request.getParameter('id'));
  user.deleteUser(id);
  out.println(user.getUserName()+'删除成功！');

  %>
  <a href="userQuery.jsp"查询全部用户信息</a>
</body>
