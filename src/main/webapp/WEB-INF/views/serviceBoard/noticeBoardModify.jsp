<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>       
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url var='root' value='/'/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>공지사항</title>
</head>
<body>

<!-- 헤더 자리 -->

	<div>
		<form:form action="${root }serviceBoard/noticeBoardModify_pro" method="post" modelAttribute="nbModifyBean"
		enctype="multipart/form-data">
			<form:hidden path="nb_no"/>
		<div>
			<form:label path="nb_title">제목</form:label>
			<form:input path="nb_title" />
			<form:errors path="nb_title" style="color:red"></form:errors>
		</div>
		<div>
			<form:label path="nb_contents">내용</form:label>
			<form:textarea path="nb_contents" rows="10" style="resize:none"></form:textarea>
			<form:errors path="nb_contents" style="color:red"></form:errors>
		</div>
		<div>
			<form:label path="upload_file">첨부 이미지</form:label>
			<form:input type="file" path="upload_file" accept="image/*"/>
		</div>
		<div >
		<div>
			<form:button>작성하기</form:button>
		</div>
		</div>			
			</form:form>
	</div>

<!-- 푸터 자리 -->


</body>
</html>
