<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>企业日常事务管理系统-身份识别</title>
<link href="css.css" type="text/css" rel="stylesheet" media="all" />
<script src="menu.js" type="text/javascript"></script>
</head>

<body>
<div id="topexplain">企业日常事务管理系统，为企业内部通信提供最简便的服务！</div>
<div id="topmenu"><img src="images/banner.jpg" width="970" height="147" /></div>
<div id="bookmunu">
<div class="jsmenu" id="jsmenu">
<ul>
  <li class="normal"><a href="index.jsp" urn="#jsmenu1" rel="conmenu">首页</a></li>
  <li class="normal"><a urn="jsmenu2" rel="conmenu" href="GetMessageList">消息列表</a></li>
  <li class="normal"><a urn="jsmenu3" rel="conmenu" href="publishNewMsg.jsp">发布新消息</a></li>
  <li class="active"><a urn="default_Info" rel="conmenu" href="statusRecognise.jsp">身份识别</a></li>
  </ul>
</div>
<div id="conmenu"></div>

</div>

<div id="indexfirst">
	<div id="place">当前位置：[<a href="index.jsp">首页</a>] - [员工身份识别]</div>
  <div id="menunav2">
		<div class="tit">

 		 <h1>员工身份识别</h1>

		</div>
		<div id="shenfenshibie">
			<font color="red">${requestScope.error }</font>
			<form action="${pageContext.request.contextPath}/Empleyee/login" method="post">
				<p>${sessionScope.msg}</p>
				<p>员工编号：<input type="text" name="employeeID" value="${param.employeeID}"/></p>
		  	<p>&nbsp;</p>
		  	<p>系统口令：<input type="password" name="password" /></p>
		  	<p>&nbsp;</p>
		  	<p><input type="submit" value="提交" />
		    <input type="reset" value="重置" /></p>
		    </form>
		</div>
</div>
</div>
<div id="indexsec"></div>
<div class="copyright"><ul><li></li>
<li>企业日常事务管理系统 &nbsp;&copy;2009-2010</li>
</ul>
</div>
<div class="end"></div>

</body>
</html>

