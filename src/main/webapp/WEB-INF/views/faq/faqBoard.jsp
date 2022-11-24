<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>

<!--
 // WEBSITE: https://themefisher.com
 // TWITTER: https://twitter.com/themefisher
 // FACEBOOK: https://www.facebook.com/themefisher
 // GITHUB: https://github.com/themefisher/
-->

<html lang="ko">
<head>

  <!-- Basic Page Needs
	================================================== -->
  <meta charset="utf-8">
  <title>faqBoard</title>

  <!-- Mobile Specific Metas
	================================================== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="description" content="Construction Html5 Template">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
  <meta name="author" content="Themefisher">
  <meta name="generator" content="Themefisher Educenter HTML Template v1.0">

  <!-- ** Plugins Needed for the Project ** -->
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
  <link href="css/faqstyle.css" rel="stylesheet">

  <!--Favicon-->
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
  <link rel="icon" href="images/favicon.png" type="image/x-icon">

</head>

<body>
  <!-- preloader start -->
  <div class="preloader">
    <img src="images/preloader.gif" alt="preloader">
  </div>
  <!-- preloader end -->

<!-- ===============================  header  =============================== -->
   <c:import url="/WEB-INF/views/include/header.jsp"/>
<!-- ===============================  header  =============================== -->

<!-- Modal -->
	<div class="modal fade" id="loginModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-title text-center">
						<h4>회원 로그인</h4>
					</div>
					<div class="d-flex flex-column text-center">
						<form>
							<div class="form-group">
								<input type="text" class="form-control" id="id" name="id"
									placeholder="ID">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="password"
									name="password" placeholder="Password">
							</div>
							<button type="button" class="btn btn-info btn-block btn-round"
								type="submit">로그인</button>
						</form>
						<div class="text-center text-muted delimiter">다른 계정으로 로그인</div>
						<div class="d-flex justify-content-center social-buttons">
							<button type="button" class="btn btn-secondary btn-round"
								data-toggle="tooltip" data-placement="top" title="Google">
								<i class="fab fa-google"></i>
							</button>
							<button type="button" class="btn btn-secondary btn-round"
								data-toggle="tooltip" data-placement="top" title="Facebook">
								<i class="fab fa-facebook"></i>
							</button>
							<button type="button" class="btn btn-secondary btn-round"
								data-toggle="tooltip" data-placement="top" title="twitter">
								<i class="fab fa-twitter"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- 학원 로그인 -->
	<div class="modal fade" id="loginModal2" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header border-bottom-0">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">×</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="form-title text-center">
						<h4>학원 로그인</h4>
					</div>
					<div class="d-flex flex-column text-center">
						<form>
							<div class="form-group">
								<input type="text" class="form-control" id="id2" name="id2"
									placeholder="ID">
							</div>
							<div class="form-group">
								<input type="password" class="form-control" id="password2"
									name="password2" placeholder="Password">
							</div>
							<button type="button" class="btn btn-info btn-block btn-round"
								type="submit">로그인</button>
						</form>
						<div class="text-center text-muted delimiter">다른 계정으로 로그인</div>
						<div class="d-flex justify-content-center social-buttons">
							<button type="button" class="btn btn-secondary btn-round"
								data-toggle="tooltip" data-placement="top" title="Google">
								<i class="fab fa-google"></i>
							</button>
							<button type="button" class="btn btn-secondary btn-round"
								data-toggle="tooltip" data-placement="top" title="Facebook">
								<i class="fab fa-facebook"></i>
							</button>
							<button type="button" class="btn btn-secondary btn-round"
								data-toggle="tooltip" data-placement="top" title="twitter">
								<i class="fab fa-twitter"></i>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


<!-- page title -->
<section class="page-title-section overlay" data-background="images/backgrounds/page-title.jpg">
  <div class="container">
    <div class="row">
      <div class="col-md-8">
        <ul class="list-inline custom-breadcrumb mb-2">
          <li class="list-inline-item"><a class="h2 text-primary font-secondary" href="index">Home</a></li>
          <li class="list-inline-item text-white h3 font-secondary nasted">고객센터</li>
          <li class="list-inline-item text-white h3 font-secondary nasted">FAQ</li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!-- /page title -->

<!-- blogs -->
<section class="section">
  <div class="container">
    <div class="row justify-content-center mb-5">
      <div class="col-lg-6">
        <div class="section-title text-center">
          <h2>자주 묻는 질문</h2>
        </div>
      </div>
    </div>
   <c:forEach var="str" items="${faqlist}">
	<a href="${root}faq/detail?fb_no=${str.fb_no}">${str.fb_title}&nbsp;&nbsp;</a>
    <div class="row justify-content-center">
      <div class="col-lg-9">
        <div class="accordion accordion-border-bottom" id="accordionFAQ">
          <div class="accordion-item">
            <h2 class="accordion-header accordion-button h5 border-0 active"
              id="heading-ebd23e34fd2ed58299b32c03c521feb0b02f19d9" type="button" data-bs-toggle="collapse"
              data-bs-target="#collapse-ebd23e34fd2ed58299b32c03c521feb0b02f19d9" aria-expanded="true"
              aria-controls="collapse-ebd23e34fd2ed58299b32c03c521feb0b02f19d9">${str.fb_contentsQ }
            </h2>
            <div id="collapse-ebd23e34fd2ed58299b32c03c521feb0b02f19d9"
              class="accordion-collapse collapse border-0 show"
              aria-labelledby="heading-ebd23e34fd2ed58299b32c03c521feb0b02f19d9" data-bs-parent="#accordionFAQ">
              <div class="accordion-body py-0 content">${str.fb_contentsA }</div>
            </div>
          </div>

        </div>
      </div>
    </div>
    </c:forEach>
    <a href="${root}faq/write">faq글쓰기</a>
  </div>
</section>
<!-- /blogs -->

<!-- ===============================  footer  =============================== -->
 <c:import url="/WEB-INF/views/include/footer.jsp"/>
<!-- ===============================  footer  =============================== -->

<!-- jQuery -->
<script src="plugins/jQuery/jquery.min.js"></script>
<script src="plugins/jQuery/faqjquery.min.js"></script>
<!-- Bootstrap JS -->
<script src="plugins/bootstrap/bootstrap.min.js"></script>
<script src="plugins/bootstrap/faqbootstrap.min.js"></script>
<!-- slick slider -->
<script src="plugins/slick/slick.min.js"></script>
<script src="plugins/slick/faqslick.min.js"></script>
<!-- aos -->
<script src="plugins/aos/aos.js"></script>
<!-- venobox popup -->
<script src="plugins/venobox/venobox.min.js"></script>
<!-- filter -->
<script src="plugins/filterizr/jquery.filterizr.min.js"></script>
<!-- google map -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCcABaamniA6OL5YvYSpB3pFMNrXwXnLwU"></script>
<script src="plugins/google-map/gmap.js"></script>
<!-- # JS Plugins -->
<script src="plugins/scrollmenu/scrollmenu.min.js"></script>

<!-- Main Script -->
<script src="js/script.js"></script>
<script src="js/faqscript.js"></script>

</body>
</html>