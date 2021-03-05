<body>
  <jsp:useBean id="user" class="com.witbridge.sabrina.testLogin" scope="request"></jsp:useBean>
  <jsp:setProperty name="user" property="*" />
  <%
  string userName = user.getUserName();
  string password = user.getPassword();
  //若用户无输入或输入为空格，则不连接数据库，转向enter_form.jsp
  if (userName == null || password == null || ".equals(userName.trim()) ||".equals(password.trim())){
    session.setAttribute("msg",'please input!');
    response.sendRedirect('enter_form.jsp');
    //否则创建对象进行判断进入相应页面
  } else {
    JDBCDemojdbcDemo = new JDBCDemo();
    testLogin isExist = new testLogin();
    isExist = JDBCDemo.login(userName,password);
    if(isExist!=null){
      out.println('欢迎'+isExist.getUserName()+'登入');
    }else{
      session.setAttribute('msg','login fail!');
      response.sendRedirect('enter_form.jsp');
    }
  }
%>
</body>
