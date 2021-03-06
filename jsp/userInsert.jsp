#userInsert.jsp#
<body>
  <from action='action2.jsp'method='post'name='form2'>
    <h1>
      登入页面
    </h1>
    <%
    string msg = (string) session.getAttribute('msg');
    if (msg!=null) {
      session.removeAttribute('msg');
      out.println(msg + '<br>');
    }
%>
用户名：
<input type="text"name="userName" value="">
  <br/>
  密码：
  <input type="password" name="password" value="">
    <br/>
    <input type="submit" name="submit" value="提交">
      <input type="reset"name="reset" value="重置">
      </form>
    </body>
