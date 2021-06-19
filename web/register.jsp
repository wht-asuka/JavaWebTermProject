<%--
  Created by IntelliJ IDEA.
  User: tao
  Date: 2021/5/31
  Time: 22:30
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
    <base href="<%=basePath%>">

    <title>注册新用户</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <script type="text/javascript">
        function dosubmit(){

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
            th.action="<%=path%>/servlet/RegisterAction";
            th.submit();

        }
        function back(){
            alert("退回主页！");
            th = document.form1;
            th.acton="<%=path%>/index.jsp";
            th.submit;
        }

    </script>
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/make.css">
</head>

<body >

<form method="post" action="" name="form1">
    <div class="login">
        <h2>用户注册平台</h2>
        <div class="form">
            <div class="check_msg"></div>
            <div class="login_name">
                <input type="text" name="username"/>
            </div>
            <div class="login_pwd">
                <input type="password" name="pswd"/>
            </div>

            <button class="button" type="button" name="" onclick="dosubmit()" >确定</button>
            <button class="button" type="button" name="" value="" onclick="javascript:location.href='index.jsp'" >返回</button>
        </div>
    </div>
</form>
</body>
</html>