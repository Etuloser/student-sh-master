<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
	<meta http-equiv="content-type" content="text/html;charset=UTF-8">
	<link rel="stylesheet" type="text/css" href="../css/default.css" />
	<link rel="stylesheet" type="text/css" href="../css/default.css" />
<style type="text/css">
* {
    background: none repeat scroll 0 0 transparent;
    border: 1 none;
    margin: 0;
    padding: 0;
    vertical-align: baseline;
	font-family:微软雅黑;
}
#navi{
	width:100%;
	position:relative;
	word-wrap:break-word;
	border-bottom:1px solid #065FB9;
	margin:0;
	padding:0;
	height:40px;
	line-height:40px;
	vertical-align:middle;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, 
#BFBFBF));
}
#naviDiv{
	font-size:14px;
	color:#333;
	padding-left:10px;
}
#tips{
	margin-top:10px;
	width:100%;
	height:40px;
}
#buttonGroup{
	padding-left:10px;
	float:left;
	height:35px;
}
.button{
	margin-top:20px;
	padding-left:10px;
	padding-right:10px;
	font-size:14px;
	width:70px;
	height:30px;
	line-height:30px;
	vertical-align:middle;
	text-align:center;
	cursor:pointer;
    border-color: #77D1F6;
    border-width: 1px;
    border-style: solid;
    border-radius: 6px 6px;
    -moz-box-shadow: 2px 2px 4px #282828;
    -webkit-box-shadow: 2px 2px 4px #282828;
    background-image: -moz-linear-gradient(top,#EBEBEB, #BFBFBF);
    background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #EBEBEB),color-stop(1, #BFBFBF));
}
#mainContainer{
	padding-left:10px;
	padding-right:10px;
	text-align:left;
	width:98%;
	font-size:16px;
}
</style>
<body>
<script type="text/javascript" src="../js/Calendar3.js"></script>

<div id="navi">
	<div id='naviDiv'>
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;学生管理<span>&nbsp;
		<span><img src="../images/arror.gif" width="7" height="11" border="0" alt=""></span>&nbsp;<a href="<%=path%>/students/Students_query.action">学生列表</a><span>&nbsp;
	</div>
</div>
<div id="tips">
</div>
<div id="mainContainer">
<!-- 从session中获取学生集合 -->
<strong>修改学生资料</strong>
<br>
<br>
<h4>基本信息：</h4>
<br>
<form name="modifyForm" action="<%=path%>/students/Students_save.action" method="post">
<table width="400" >
  <tr>
    <td width="30%">学号：</td>
    <td><input type="text" name="sid" value='<s:property value="#session.modify_students.sid"/>'  readonly="readonly"/></td>
  </tr>
  <tr>
    <td width="30%">姓名：</td>
    <td><input type="text" name="sname" value='<s:property value="#session.modify_students.sname"/>'/></td>
  </tr>
  <tr>
    <td>性别：</td>
    <td>
      <s:if test='%{#session.modify_students.gender=="男"}'>
         <input type="radio" name="gender" value="男" checked="checked"/>男
         <input type="radio" name="gender" value="女"/>女
      </s:if>
      <s:else>
         <input type="radio" name="gender" value="男" />男
         <input type="radio" name="gender" value="女" checked="checked"/>女
      </s:else>
      </td>
  </tr>
  <tr>
    <td>出生日期：</td>
    <td><input name="birthday" type="text" id="control_date" size="20"
      maxlength="10" onclick="new Calendar().show(this);" readonly="readonly" 
      value="<s:date name="#session.modify_students.birthday" format="yyyy-MM-dd"/>"
      />
    </td>
  </tr>
    <tr>
    <td>年龄：</td>
    <td><input type="text" name="sage" value='<s:property value="#session.modify_students.sage"/>'/></td>
  </tr>
  <tr>
    <td>籍贯：</td>
    <td><input type="text" name="address" value='<s:property value="#session.modify_students.address"/>'/></td>
  </tr>
  <tr>
    <td>专业：</td>
    <td><input type="text" name="specialty" value='<s:property value="#session.modify_students.specialty"/>'/></td>
  </tr>
  <tr>
  <tr>
    <td>学历：</td>
    <td>
      <s:if test='%{#session.modify_students.education=="本科"}'>
         <input type="radio" name="education" value="本科" checked="checked"/>本科
         <input type="radio" name="education" value="专科"/>专科
      </s:if>
      <s:else>
         <input type="radio" name="education" value="本科" />本科
         <input type="radio" name="education" value="专科" checked="checked"/>专科
      </s:else>
      </td>
  </tr>
  <tr>
    <td>求职类型：</td>
    <td>
      <s:if test='%{#session.modify_students.type=="实习"}'>
         <input type="radio" name="type" value="兼职" checked="checked"/>兼职
         <input type="radio" name="type" value="全职"/>全职
         <input type="radio" name="type" value="实习"/>实习
      </s:if>
      <s:else>
         <input type="radio" name="type" value="兼职" />兼职
         <input type="radio" name="type" value="全职" checked="checked"/>全职
         <input type="radio" name="type" value="实习"/>实习
      </s:else>
      </td>
  </tr>
  <tr>
    <td>婚姻情况：</td>
    <td>
      <s:if test='%{#session.modify_students.marry=="未婚"}'>
         <input type="radio" name="marry" value="未婚" checked="checked"/>未婚
         <input type="radio" name="marry" value="已婚"/>已婚
      </s:if>
      <s:else>
         <input type="radio" name="marry" value="未婚" />未婚
         <input type="radio" name="marry" value="已婚" checked="checked"/>已婚
      </s:else>
      </td>
  </tr>
  <tr>
    <td>毕业院校：</td>
    <td><input type="text" name="school" value='<s:property value="#session.modify_students.school"/>'/></td>
  </tr>
  <tr>
    <td>毕业年份：</td>
    <td><input type="text" name="graduation" value='<s:property value="#session.modify_students.graduation"/>'/></td>
  </tr>
  <tr>
    <td>证书：</td>
    <td><input type="text" name="certificate" value='<s:property value="#session.modify_students.certificate"/>'/></td>
  </tr>
  <tr>
    <td>驾照：</td>
    <td><input type="text" name="driver" value='<s:property value="#session.modify_students.driver"/>'/></td>
  </tr>
  <tr>
    <td>身高：</td>
    <td><input type="text" name="height" value='<s:property value="#session.modify_students.height"/>'/></td>
  </tr>
</table>
<br>
<h4>联系方式：</h4>
<br>
<table width="400" >
  <tr>
    <td>手机：</td>
    <td><input type="text" name="phone" value='<s:property value="#session.modify_students.phone"/>'/></td>
  </tr>
  <tr>
    <td>QQ：</td>
    <td><input type="text" name="qq" value='<s:property value="#session.modify_students.qq"/>'/></td>
  </tr>
  <tr>
    <td>微信：</td>
    <td><input type="text" name="vchat" value='<s:property value="#session.modify_students.vchat"/>'/></td>
  </tr>    
  <tr>
    <td colspan="2" align="center"><input class="button" type="submit" value="修改"></td>
  </tr>	
</table>
</form>


</div>
</body>
</html>