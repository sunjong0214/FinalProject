<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- Board -->    
<section class="section bg-gray">
		  <div class="container">
		    <div class="row">
		      <div class="col-lg-12">
		       <div class="section-title text-center">
		          <h2>내가 쓴 글</h2>
		          
		          </div>
		      </div>
		    </div>
		   </div>
		<table>
		    <thead>
		    <tr>
		        <th>제목</th>
		       <th>작성일자</th>
		    </tr>
		    </thead>
		    <tbody>
			<tr>
				<td>
			<c:forEach var="ask" items="${myasklist}">
			
        		<a href="${root }member/mypage_siteAskRead?sa_time=${ask.sa_time}">${ask.sa_title}</a><br>
        		<fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${ask.sa_time}" /><br>
			</c:forEach>
				</td>
			</tr>
			</tbody>
		</table>
		
</section>

	
	<a href="${root }member/insertChild?m_memberNo=${sessionScope.loginMemberBean.m_memberNo}">자녀정보입력</a>	
	<a href="${root }member/modify?m_memberNo=${sessionScope.loginMemberBean.m_memberNo}">회원정보수정</a>
	<a href="${root }member/delete?m_memberNo=${sessionScope.loginMemberBean.m_memberNo}">회원탈퇴</a>
</body>
</html>