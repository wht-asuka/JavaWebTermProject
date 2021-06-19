<%--
  Created by IntelliJ IDEA.
  User: tao
  Date: 2021/5/30
  Time: 19:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
  String path = request.getContextPath();
  String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>

<head>
<%--  定义jsp基准目录--%>
  <base href="<%=basePath%>">


  <title>洪涛管理系统</title>
  <meta http-equiv="pragma" content="no-cache">
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="expires" content="0">
  <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  <meta http-equiv="description" content="This is my page">

  <link rel="stylesheet" type="text/css" href="<%=path%>/css/make.css">


  <script type="text/javascript">
    function login(){
      var th = document.form1;
      if(th.username.value==""){
        alert("用户名不能为空！");
        th.username.focus();
        return;
      }
      if(th.pswd.value==""){
        alert("密码不能为空！");
        th.pswd.focus();
        return;
      }

      th.action = "<%=path%>/servlet/LoginAction";
      th.submit();


    }

  </script>

</head>

<body>


<form method="post" action="" name="form1">
  <div class="login">
    <h2>登录管理平台</h2>
    <div class="form">
      <div class="login_name">
        <input type="text" name="username"/>
      </div>
      <div class="login_pwd">
        <input type="password" name="pswd"/>
      </div>
      <div class="login_help">
        <label>
          <input name="login_remember" type="checkbox" />
          记住帐号</label><span><a href="#"> 忘记密码？</a></span>
      </div>
        <button class="button" type="button" name="" value="" onclick="login()">登录</button>
        <button class="button" type="button" name="" value="" onclick="javascript:location.href='register.jsp'">注册</button>
    </div>
  </div>
</form>

</body>
</html>