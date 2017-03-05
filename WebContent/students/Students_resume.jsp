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
<style type="text/css">
* {
    background: none repeat scroll 0 0 transparent;
    border: 1 none;
    margin: 0;
    padding: 0;
    vertical-align: baseline;
	font-family:微软雅黑;
	overflow:hidden;
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
table{
	border:1px solid grey;
	border-collapse:collapse;
	width:100%
}
table td{
	border:1px solid grey;
}
.tit{
	font-weight: bold;
    text-align: center;
    width: 10%;
    color: #868181;
    background-color: #FAFAFA;
}
.tit-name{
	width:10%;
	text-align: center;
}
.tit-type{
	width:20%;
	text-align: center;
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
<form name="resume" action="<%=path%>/students/Students_save.action" method="post">
	<strong>基本信息</strong>
	<table>
		<tr>
			<td class="tit">姓	名</td>
			<td class="tit-name"><s:property value="#session.resume_students.sname"/></td>
			<td class="tit">求职类型</td>
			<td class="tit-type"><s:property value="#session.resume_students.type"/></td>
			<td class="tit">身	高</td>
			<td class="tit-name"><s:property value="#session.resume_students.height"/></td>
		</tr>
		<tr>
			<td class="tit">性	别</td>
			<td class="tit-name"><s:property value="#session.resume_students.gender"/></td>
			<td class="tit">毕业院校</td>
			<td class="tit-type"><s:property value="#session.resume_students.school"/></td>
			<td class="tit">毕业年份</td>
			<td class="tit-name"><s:property value="#session.resume_students.graduation"/></td>
		</tr>
		<tr>
			<td class="tit">年	龄</td>
			<td class="tit-name"><s:property value="#session.resume_students.sage"/></td>
			<td class="tit">专业</td>
			<td class="tit-type"><s:property value="#session.resume_students.specialty"/></td>
			<td class="tit">婚姻情况</td>
			<td class="tit-name"><s:property value="#session.resume_students.marry"/></td>
		</tr>
		<tr>
			<td class="tit">学	历</td>
			<td class="tit-name"><s:property value="#session.resume_students.education"/></td>
			<td class="tit">证	书</td>
			<td class="tit-type"><s:property value="#session.resume_students.certificate"/></td>
			<td class="tit">驾	照</td>
			<td class="tit-name"><s:property value="#session.resume_students.driver"/></td>
		</tr>
	</table>
	<br/>
	<strong>联系方式</strong>
	<table>
		<tr>
			<td class="tit">手	机</td>
			<td class="tit-name"><s:property value="#session.resume_students.phone"/></td>
			<td class="tit">微信</td>
			<td class="tit-type"><s:property value="#session.resume_students.vchat"/></td>
			<td class="tit">Q	Q</td>
			<td class="tit-name"><s:property value="#session.resume_students.qq"/></td>
		</tr>
	</table>
	<br/>
	<strong>求职意向</strong>
	<table>
		<tr>
			<td class="tit">意向职位</td>
			<td class="tit-name"></td>
			<td class="tit">工作地点</td>
			<td class="tit-type">赣州</td>
			<td class="tit">期望月薪</td>
			<td class="tit-name">2000</td>
		</tr>
	</table>
	<br/>
	<strong>教育经历</strong>
	<table>
		<tr>
			<td class="tit">起止日期</td>
			<td class="tit">学校/培训机构</td>
			<td class="tit">专业或受训课程</td>
			<td class="tit">学历或资格证书</td>
		</tr>
		<tr>
			<td class="tit-type">1</td>
			<td class="tit-type">1</td>
			<td class="tit-type">1</td>
			<td class="tit-type">1</td>
		</tr>
	</table>
	<br/>
	<strong>个人评价</strong>
	<table>
		<tr>
			<td class="tit-name">热爱生活。</td>
		</tr>
	</table>
</form>
</div>
</body>
</html>