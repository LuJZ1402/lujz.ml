#userUpdate.jsp#
<body>
  <form action='action3.jsp' method='post' name='form3'>
    <h1>
      修改密码
    </h1>
    <%
    String msg = (String) session.getAttribute('msg');
    if (msg != null) {
      session.removeAttribute('msg');
      out.println(msg + '<br>');
    }
    %>
    输入密码:
    <input type="password" name="pwd1" value="">
      <br />
      确认密码：
      <input type="password" name="pwd2"value="">
        <br />
        <input type="submit" name="submit" value="提交">
          <input type="reset" name="reset" value="重置">
            <input type="hidden"name="id"value="<%=request.getParameter('id')%>">
          </form>
        </body>
      
