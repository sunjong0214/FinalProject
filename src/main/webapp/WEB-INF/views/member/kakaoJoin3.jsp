<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
  <article class="form-area">
      <!-- Form area Sign Up -->
      <div class="organize-form form-area-signup">
        <h2>회원가입</h2>
        <form:form class="form" action="${root }member/join_pro" method="post" modelAttribute="joinMemberBean">
          <div class="form-field">
            <form:label path="m_id">ID</form:label>
            <form:input type="text" path="m_id" value="${userInfo.m_email }" readonly="true"/>
			<form:errors path="m_id" style="color:red"/>
          </div>
			
          <div class="form-field">
            <form:label path="m_pw">Password</form:label>
            <form:input type="password" path="m_pw"/>
			<form:errors path="m_pw" style="color:red"/>
          </div>

          <div class="form-field">
            <form:label path="m_name">이름</form:label>
            <form:input type="text" path="m_name"/>
			<form:errors path="m_name" style="color:red"/>
          </div>
          
          <div class="form-field">
            <form:label path="m_birth">주민번호</form:label>
            <form:input type="text" path="m_birth" placeholder="6자리 입력"/>
			<form:errors path="m_birth" style="color:red"/>
          </div>
          
        
          <div class="form-field">
          <form:label path="m_gender">성별</form:label>
           <form:input path="m_gender"/>
           <form:errors path="m_gender" style="color:red"/>
		</div>
          <div class="form-field">
            <form:label path="m_tele">전화번호</form:label>
            <form:input type="tele" path="m_tele" placeholder="-까지 입력" />
			<form:errors path="m_tele" style="color:red"/>
          </div>
          
          <div class="form-field">
            <form:label path="m_email">이메일</form:label>
            <form:input type="email" path="m_email"/>
			<form:errors path="m_email" style="color:red"/>
          </div>
          
          <form:button class="btn-sign btn-up" type="submit">회원가입 완료</form:button>
        </form:form>
       
      </div>
</body>
</html>