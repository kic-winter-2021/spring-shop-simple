<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%-- /webapp/layout/layout.jsp --%>
<%@ taglib prefix="decorator"
	uri="http://www.opensymphony.com/sitemesh/decorator"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <decorator:title /> 원래 작성된 html(또는 jsp)의 title이 들어감. --%>
<title><decorator:title /></title>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript"
	src="http://cdn.ckeditor.com/4.5.7/standard/ckeditor.js"></script>
<%-- <decorator:head /> 원래 작성된 head의 내용. 단, <title> 태그의 내용 제외. --%>
<decorator:head />
<link rel="stylesheet" href="${path}/css/tmp.css">
</head>
<body>
	<table>
		<tr>
			<td colspan="3" style="text-align: right">
				<c:if test="${empty sessionScope.loginUser}">
					<a href="${path}/user/login">로그인</a>
					<a href="${path}/user/userEntry">회원가입</a>
				</c:if>
				<c:if test="${!empty sessionScope.loginUser}"> ${sessionScope.loginUser.username }님
   					<a href="${path}/user/logout">로그아웃</a>
				</c:if></td>
		</tr>
		<tr>
			<td width="15%" valign="top">
				<a href="${path }/board/list">게시판</a><br>
				<a href="${path }/user/main">회원관리</a><br>
				<a href="${path }/item/list">상품관리</a><br>
			</td>
			<td colspan="2" style="text-align: left; vertical-align: top"><decorator:body /></td>
		</tr>
		<tr>
			<td colspan="3">SPRING SHOP SIMPLE</td>
		</tr>
	</table>
</body>
</html>