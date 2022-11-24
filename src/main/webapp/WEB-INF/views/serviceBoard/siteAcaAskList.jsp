<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

  <c:url var='root' value='/'/>
 <!DOCTYPE html>
<html>   
<head>

<meta charset="utf-8">
<title> : 학원 문의사항 :</title>

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
			<h4> : 문 의 사 항 : (학원) </h4>	
			  <p>총게시물 ${acaAskCnt} 개</p>
		   </div>
		  </div>
		 </div>
		</div>
		<table>
		    <thead>
		    <tr>        
		       <th>no</th>
		       <th>제목</th>
		       <th>작성일자</th>
		       </tr>
		        </thead>
		    <tbody>   
			<c:forEach var="str" items="${aalist}">
				<tr>
        		<td>${str.a_name}</td>
        		<td><a href="${root }serviceBoard/siteAcaAskRead?aa_time=${str.aa_time}">${str.aa_title}</a></td>
        		<td><fmt:formatDate pattern="yyyy/MM/dd HH:mm" value="${str.aa_time}" /></td>
				</tr>
			</c:forEach>
			
			</table>
		<div>
			  <nav>
			  <ul class="pagination" id="pagination">
			 
			  </ul>  
  			</nav>
			<div class="d-none d-md-block">
				<ul class="pagination">
					<c:choose>
						<c:when test="${pageCountBeanA.prevPage <= 0 }">
							<li class="page-item disabled">
								<a href="#" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이전</font></font></a>
							</li>
						</c:when>
					<c:otherwise>
						<li class="page-item">
						<a href="${root}serviceBoard/siteAcaAskList?pageA=${pageCountBeanA.prevPage}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">이전</font></font></a>
						</li>					
					</c:otherwise>					
					</c:choose>
														
					<c:forEach var="idx" begin="${pageCountBeanA.min }" end="${pageCountBeanA.max }">
						<c:choose>
							<c:when test="$idx == pageCountBeanA.currentPage">
							<li class="page-item active">
								<a href="${root}serviceBoard/siteAcaAskList?pageA=${idx}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${idx}</font></font></a>
							</li>		
						</c:when>
						
						<c:otherwise>
							<li class="page-item">
								<a href="${root}serviceBoard/siteAcaAskList?pageA=${idx}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">${idx}</font></font></a>
							</li>						
						</c:otherwise>						
						</c:choose>									
					</c:forEach>					
					
					<c:choose>
						<c:when test="${pageCountBeanA.max >= pageCountBeanA.pageCnt}">
							<li class="page-item disabled">
								<a href="#" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">다음</font></font></a>
							</li>
						</c:when>
					
					<c:otherwise>
						<li class="page-item">
							<a href="${root}serviceBoard/siteAcaAskList?pageA=${pageCountBeanA.nextPage}" class="page-link"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">다음</font></font></a>
						</li>
					</c:otherwise>
					</c:choose>
				</ul>
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