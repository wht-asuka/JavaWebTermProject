<%--
  Created by IntelliJ IDEA.
  User: tao
  Date: 2021/5/31
  Time: 22:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
    Map<String,Object> map = (Map<String,Object>)request.getAttribute("productMap");

%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">

    <title>查看产品</title>

    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    <link rel="stylesheet" type="text/css" href="<%=path%>/css/main.css">
</head>

<body >
<div align="center">

    <table width=60% style="margin:auto">

        <tr>
            <td height=100>

            </td>
        </tr>
        <tr>
            <td >
                图书信息
            </td>
        </tr>
        <tr>
            <td>
                <table width = 99% border =1 >
                    <tr align="center">
                        <td width = 20%>图书名称</td>
                        <td width = 30%><%=map.get("proname") %></td>
                        <td width = 20%>图书作者</td>
                        <td><%=map.get("proauthor") %></td>


                    </tr>
                    <tr align="center">
                        <td >图书出版社</td>
                        <td colspan=3><%=map.get("proaddress") %></td>


                    </tr>
                    <tr align="center">
                        <td>图书图片</td>
                        <td colspan=3><img src="<%=path%>/upload/<%=map.get("proimage") %>"></td>

                    </tr>


                </table>
            </td>
        </tr>
        <tr>
            <td align="center">
                <button type="button" onclick="javascript:location.href='<%=path %>/main.jsp'">确定</button>
                <button type="button" onclick="javascript:history.go(-1)">返回</button>
            </td>
        </tr>

    </table>


</div>
</body>
</html>
