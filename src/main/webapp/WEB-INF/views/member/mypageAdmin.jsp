<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> : 관리자 admin01 : </title>
</head>
<body>
	<h2>  : 관리자 admin01 의 마이페이지 : </h2>
	
	<div>
	<a href="${root}member/mypageAdmin_member">회원 정보</a> <br>
	<a href="${root}academymember/mypageAdmin_academy">학원 회원</a> <br>
	<a href="${root}serviceBoard/siteAskList">문의사항(회원)</a> <br>
	<a href="${root}serviceBoard/siteAcaAskList">문의사항(학원)</a> <br>
	<a href="${root}index">돌아가기</a> 
	</div>
	<br><br><br>
	<h2>추가 예정</h2>
	<hr>
	<h2>월별 가입자 수</h2>
	<h2>총 회원 수</h2>
	<h2>총 학원 수</h2>

</body>
</html>