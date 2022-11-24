<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/> 
<!DOCTYPE html>
<html>
<head>
<style>
<style>
.btn-group button {
  background-color:blue; 
  border: 1px solid gray; 
  color: white; 
  padding: 10px 24px;
  cursor: pointer;
  float: left;
}

/* Clear floats (clearfix hack) */
.btn-group:after {
  content: "";
  clear: both;
  display: table;
}

.btn-group button:not(:last-child) {
  border-right: none;
}

.btn-group button:hover {
  background-color: tomato;
}

.a,.b,c {width:100%}
.a button {width:50%}
.b button {width:33.33%}
.c button {width:25%}
</style>>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<fmt:parseDate value="${today}" var="registered" pattern="yyyy.MM.dd HH:mm:ss" />
<fmt:formatDate value="${rsp.merchant_uid}" pattern="yyyyMMdd" />


<!-- 1개월 멤버십 -->
<script>
	var IMP = window.IMP; 
	IMP.init("imp71151373");
	//SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmss");
	today = new Date();
	
	function requestPay1() {
	    IMP.request_pay({
	        pg : 'html5_inicis',
	        pay_method : 'card',
	        merchant_uid: new Date(),
	        name : 'SkyCastle 1개월 멤버십',
	        amount : 100,
	        buyer_email : '1',
	        buyer_name : '',
	        buyer_tel : '',
	        buyer_addr : '',
	        buyer_postcode : ''
	    }, function (rsp) { // callback
	        if (rsp.success) {
	        	var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        result ='0';
		        
		        var sdata = new Object();
		        sdata.a_memberNo = ${sessionScope.loginAcademyMemberBean.a_memberNo}
		        sdata.a_payStart = rsp.merchant_uid
		        sdata.a_payEnd = rsp.merchant_uid
		        sdata.amount = rsp.paid_amount
		        
		         $.ajax({ 
		            url: "${root}pay/send.do", 
		            type: "POST",
		            //dataType: "JSON",
		            contentType: "application/json; charset=utf-8",
		            data: JSON.stringify(sdata),
		            success : function() {	            	
		            },
		       		error : function(request,status,error) {
		       			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       		}
		        }) 
	        } else {
	        	var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		        result ='1';
	        }
	        if(result=='0') {
		    	location.href= "${root }index";
		    	
		    	
		    }
		    alert(msg);
	    });
	}
</script>
<!-- 6개월 멤버십 -->
<script>
	var IMP = window.IMP; 
	IMP.init("imp71151373");
	//SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmss");
	today = new Date();
	
	function requestPay6() {
	    IMP.request_pay({
	        pg : 'html5_inicis',
	        pay_method : 'card',
	        merchant_uid: new Date(),
	        name : 'SkyCastle 6개월 멤버십',
	        amount : 500,
	        buyer_email : '1',
	        buyer_name : '',
	        buyer_tel : '',
	        buyer_addr : '',
	        buyer_postcode : ''
	    }, function (rsp) { // callback
	        if (rsp.success) {
	        	var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        result ='0';
		        
		        var sdata = new Object();
		        sdata.a_memberNo = ${sessionScope.loginAcademyMemberBean.a_memberNo}
		        sdata.a_payStart = rsp.merchant_uid
		        sdata.a_payEnd = rsp.merchant_uid
		        sdata.amount = rsp.paid_amount
		        
		         $.ajax({ 
		            url: "${root}pay/send.do", 
		            type: "POST",
		            //dataType: "JSON",
		            contentType: "application/json; charset=utf-8",
		            data: JSON.stringify(sdata),
		            success : function() {	            	
		            },
		       		error : function(request,status,error) {
		       			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       		}
		        }) 
	        } else {
	        	var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		        result ='1';
	        }
	        if(result=='0') {
		    	location.href= "${root }index";
		    	
		    	
		    }
		    alert(msg);
	    });
	}
</script>
<!-- 12개월 멤버십 -->
<script>
	var IMP = window.IMP; 
	IMP.init("imp71151373");
	//SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmss");
	today = new Date();
	
	function requestPay12() {
	    IMP.request_pay({
	        pg : 'html5_inicis',
	        pay_method : 'card',
	        merchant_uid: new Date(),
	        name : 'SkyCastle 1년 멤버십',
	        amount : 1000,
	        buyer_email : '1',
	        buyer_name : '',
	        buyer_tel : '',
	        buyer_addr : '',
	        buyer_postcode : ''
	    }, function (rsp) { // callback
	        if (rsp.success) {
	        	var msg = '결제가 완료되었습니다.';
		        msg += '고유ID : ' + rsp.imp_uid;
		        msg += '상점 거래ID : ' + rsp.merchant_uid;
		        msg += '결제 금액 : ' + rsp.paid_amount;
		        msg += '카드 승인번호 : ' + rsp.apply_num;
		        result ='0';
		        
		        var sdata = new Object();
		        sdata.a_memberNo = ${sessionScope.loginAcademyMemberBean.a_memberNo}
		        sdata.a_payStart = rsp.merchant_uid
		        sdata.a_payEnd = rsp.merchant_uid
		        sdata.amount = rsp.paid_amount
		        
		         $.ajax({ 
		            url: "${root}pay/send.do", 
		            type: "POST",
		            //dataType: "JSON",
		            contentType: "application/json; charset=utf-8",
		            data: JSON.stringify(sdata),
		            success : function() {	            	
		            },
		       		error : function(request,status,error) {
		       			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		       		}
		        }) 
	        } else {
	        	var msg = '결제에 실패하였습니다.';
		        msg += '에러내용 : ' + rsp.error_msg;
		        result ='1';
	        }
	        if(result=='0') {
		    	location.href= "${root }index";
		    	
		    	
		    }
		    alert(msg);
	    });
	}
</script>
</head>
<body>
	<div class="btn-group b">
		<button onclick="requestPay1()">1개월 멤버십</button>
		<button onclick="requestPay6()">6개월 멤버십</button>
		<button onclick="requestPay12()">1년 멤버십</button>
	</div>
</body>
</html>