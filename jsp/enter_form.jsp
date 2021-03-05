#enter_form.jsp
<body>
  <form action="action.jsp" method="post" name="form1">
<h1>
  登入页面
</h1>
//如果输入信息有误，跳转回当前页面并给出用户相应提示信息msg
<%
string msg =(string) session.getAttribute('msg');
if (msg !=null) {
  session.removeAttribute('msg');//删除msg内容，因为第一次登入没有错误信息提示
  out.println(msg + '<br>');
}
%>
用户名：
<input type="text" name="userName" value="">
  <br />
  密码：
  <input type="password" name="password" value="">
    <br />
    <input type="submit" name="submit" value="提交">
      <input type="reset" name="reset" value="重置 ">
  </form>
<a href="userQuery.jsp">查询全部用户信息</a> ？//提供查询全部用户信息链接
<a href="userinsert.jsp">添加新用户</a>//如果你是新用户，可以添加新信息
</body>
