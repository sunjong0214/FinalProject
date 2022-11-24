<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form:form action="${root}academymember/modify_pro" method="post" modelAttribute="modifyAcademyMemberBean">
		<form:hidden path="a_memberNo"/>
		<div>
			<form:label path="a_id">아이디</form:label>
			<form:input path="a_id" readonly="true"/>
			<form:errors path="a_id"></form:errors>
		</div>
		<div>
			<form:label path="a_name">이름</form:label>
			<form:input path="a_name" readonly="true"/>
			<form:errors path="a_name"/>
		</div>
		<div>
			<form:label path="a_location">지역(동까지)</form:label>
			<form:input path="a_location"/>
			<form:errors path="a_location"/>
		</div>
		<div>
			<form:label path="a_locationDetail">상세주소</form:label>
			<form:input path="a_locationDetail"/>
			<form:errors path="a_locationDetail"/>
		</div>
		<div>
			<form:label path="a_tele">학원대표전화번호</form:label>
			<form:input path="a_tele"/>
			<form:errors path="a_tele"/>
		</div>
		<div>
			<form:select path="a_classify">
				<form:option value="1" label="종합"/>
				<form:option value="2" label="단과"/>
				<form:option value="3" label="예체능(기타)"/>
			</form:select>
		</div>
		<div>
			<form:button type="submit">정보수정</form:button>
		</div>
	</form:form>
</body>
</html>