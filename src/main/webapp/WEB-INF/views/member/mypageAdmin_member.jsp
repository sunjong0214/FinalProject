<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> : 관리자 admin01 : </title>
</head>
<body>
	<h2>  : 관리자 admin01 의 회원 목록 : </h2>

	<p>분류 &nbsp;&nbsp;&nbsp;&nbsp; 회원 이름 &nbsp;&nbsp;&nbsp;&nbsp;회원 번호&nbsp;&nbsp;&nbsp;&nbsp;가입 날짜</p>
	<c:forEach var="member" items="${adMemberlist }">
				${member.m_classify} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				${member.m_name} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				${member.m_memberNo} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${member.m_joinDate}" /><br><hr>
			</c:forEach>
	<a href="${root}member/mypageAdmin">관리자 마이페이지</a>
	<a href="${root}index">돌아가기</a>
</body>
</html>