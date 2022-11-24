<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  <c:url var='root' value='/'/>   
<!DOCTYPE html>
<html lang="ko">
<head>

<meta charset="utf-8">
<title>noticeRead</title>

  <!-- Mobile Specific Metas
	================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Educenter HTML Template v1.0">

  <!-- ** Plugins Needed for the Project ** -->
  <!-- serachbar -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <!-- Bootstrap -->
  <link rel="stylesheet" href="plugins/bootstrap/bootstrap.min.css">
  <!-- slick slider -->
  <link rel="stylesheet" href="plugins/slick/slick.css">
  <!-- themefy-icon -->
  <link rel="stylesheet" href="plugins/themify-icons/themify-icons.css">
  <!-- animation css -->
  <link rel="stylesheet" href="plugins/animate/animate.css">
  <!-- aos -->
  <link rel="stylesheet" href="plugins/aos/aos.css">
  <!-- venobox popup -->
  <link rel="stylesheet" href="plugins/venobox/venobox.css">

  <!-- Main Stylesheet -->
  <link href="css/style.css" rel="stylesheet">
  
</head>

<body>

<!-- ===============================  header  =============================== -->
   <c:import url="/WEB-INF/views/include/header.jsp"/>
<!-- ===============================  header  =============================== -->

	
<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="index">Home</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">고객센터</li>
          <li class="list-inline-item text-white h3 font-secondary nasted">공지사항</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- Board -->    
<section class="section bg-gray">
		  <div class="container">
		    <div class="row">
		      <div class="col-lg-12">
		       <div class="section-title text-center">
		          <h2>공지사항 </h2>
		          <p>총게시물 ${totCnt} 개</p>
		          </div>
		      </div>
		    </div>
		   </div>
		<table>
		    <thead>
		    <tr>
		        <th>no</th>
		        <th>제목</th>
		        <th>조회수</th>
		       <th>작성일자</th>
		
		    </tr>
		    </thead>
		    <tbody>
		<c:forEach var="st" items="${nblist }">
		    <tr>
		        <td>${st.nb_no}</td>
		        <td><a href="${root }serviceBoard/noticeBoardRead?nb_no=${st.nb_no}">${st.nb_title}</a></td>
				<td>${st.nb_viewCount}</td>
				<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${st.nb_writeTime}" /></td>
		    </tr>
		</c:forEach>
		<tr>
		<c:if test="${Integer.toString(sessionScope.loginMemberBean.m_memberNo).length() == 4 }">
		<td colspan="2" align="center"><a href="${root}serviceBoard/noticeBoardWrite">글쓰기</a></td>
		<td colspan="2" align="center"><a href="${root}serviceBoard/noticeBoardDelete">삭제하기</a></td>
		</c:if>
		</tr>
		</table>
		<div>
			  <nav>
			  <ul class="pagination" id="pagination">
			 
			  </ul>  
  			</nav>
  			
  				<div class="d-none d-md-block">
				<ul class="pagination">
					<c:choose>
						<c:when test="${pageCountBean.prevPage <= 0 }">
							<li class="page-item disabled">
								<a href="#" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이전</font></font></a>
							</li>
						</c:when>
					<c:otherwise>
						<li class="page-item">
						<a href="${root}serviceBoard/noticeBoardList?page=${pageCountBean.prevPage}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이전</font></font></a>
						</li>					
					</c:otherwise>					
					</c:choose>
														
					<c:forEach var="idx" begin="${pageCountBean.min }" end="${pageCountBean.max }">
						<c:choose>
							<c:when test="$idx == pageCountBean.currentPage">
							<li class="page-item active">
								<a href="${root}serviceBoard/noticeBoardList?page=${idx}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${idx}</font></font></a>
							</li>		
						</c:when>
						
						<c:otherwise>
							<li class="page-item">
								<a href="${root}serviceBoard/noticeBoardList?page=${idx}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${idx}</font></font></a>
							</li>						
						</c:otherwise>						
						</c:choose>									
					</c:forEach>					
					
					<c:choose>
						<c:when test="${pageCountBean.max >= pageCountBean.pageCnt}">
							<li class="page-item disabled">
								<a href="#" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">다음</font></font></a>
							</li>
						</c:when>
					
					<c:otherwise>
						<li class="page-item">
							<a href="${root}serviceBoard/noticeBoardList?page=${pageCountBean.nextPage}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">다음</font></font></a>
						</li>
					</c:otherwise>
					</c:choose>
				</ul>
			</div>
  
		  <div class="search-box">
		  <form:form action="${root }serviceBoard/noticeBoardSearchList_pro" modelAttribute="nbSearchBean" method="get">
		    <form:input class="search-txt" path="searchKeyword" placeholder="검색어를 입력해 주세요" value = "" />
		    <form:button class="search-btn" type="submit"><i class="fas fa-search"></i></form:button>
		  </form:form>
		
		</div>
	</div>



</section>
<!-- /Board -->  

<!-- ===============================  footer  =============================== -->
 <c:import url="/WEB-INF/views/include/footer.jsp"/>
<!-- ===============================  footer  =============================== -->

<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<!-- slick slider -->
<script src="plugins/slick/slick.min.js"></script>
<!-- aos -->
<script src="plugins/aos/aos.js"></script>
<!-- venobox popup -->
<script src="plugins/venobox/venobox.min.js"></script>
<!-- filter -->
<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"></script>
<script src="plugins/google-map/gmap.js"></script>

<!-- Main Script -->
<script src="js/script.js"></script>

</body>
</html>