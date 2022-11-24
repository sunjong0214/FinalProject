<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form:form action="${root}member/insertChild_pro" method="post" modelAttribute="insertChildBean">
			<form:hidden path="m_memberNo" value="${sessionScope.loginMemberBean.m_memberNo }"/>
			<div>
				<form:label path="c_name">학생이름</form:label>
				<form:input path="c_name"/>
			</div>
			<div>
				<form:label path="c_grade">학년</form:label>
				<form:input path="c_grade"/>
			</div>	
			<div>
				<form:label path="c_gender">성별</form:label>
				<form:input path="c_gender"/>
			</div>
			<div>
				<form:label path="c_level">학업수준</form:label>
				<form:input path="c_level"/>
			</div>
			<div>
				<form:button>입력완료</form:button>
			</div>		
		</form:form>
	</div>	
</body>
</html>