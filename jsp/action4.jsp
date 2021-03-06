#action4.jsp#
<body>
  <jsp:useBean id="user"class="com.witbridge.sabrina.testLogin" scope='request'></jsp:useBean>
  <jsp:setProperty name='user' property='*'/>
  <%
  user.setPassWord(request.getParameter('pwd1'));
  string psw = user.getPassWord();
  user.updateUser(user.getld(),psw);
  %>
  <a href="userQuery.jsp">查询全部用户信息</a>
</body>
