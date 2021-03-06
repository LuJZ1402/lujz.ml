#action3.jsp#
<body>
  <%
  string psw1 = request.getParameter('pwd1');
  string psw2 = request.getParameter('pwd2');
  if (psw1.equals(psw2)) {
    request.getRequestDispatcher('action4.jsp').forward(request,response);
  }else{
    //session.setAttribute('msg','两次密码输入不统一')；
    //response.sendRedirect('userUpdate.jsp');
    %>
    <script type='text/text/javascript'>
    alert('两次密码输入不统一');
    history.go(-1);
    </script>
    <%
  }
%>
</body>
