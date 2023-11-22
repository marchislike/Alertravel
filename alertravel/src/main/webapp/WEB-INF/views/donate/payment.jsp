<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../layouts/header1.jsp"%>

<!-- iamport.payment.js -->
<script type="text/javascript" 	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<!-- axios -->
<script type="text/javascript" 	src="https://unpkg.com/axios/dist/axios.min.js"></script>

<%
// 폼에서 전달된 파라미터 받기
String donateName = request.getParameter("donateName");
String donatePhoneNumber = request.getParameter("donatePhoneNumber");
String donateEmail = request.getParameter("donateEmail");
String donateMoney = request.getParameter("donateMoney");
String donateSelect = request.getParameter("donateSelect");
String donateMessage = request.getParameter("donateMessage");
%>

<br>
<br>

<h1 style="margin-left: 100px;">결제 수단을 선택하세요</h1>

<br>
<br>
<br>

<div class="text-center">
	<button class="rounded-button1" onclick="requestPay1()"></button>
	<button class="rounded-button2" onclick="requestPay2()"></button>
	<button class="rounded-button3" onclick="requestPay3()"></button>
</div>

<div class="text-center">
	<button onclick="location.href='paysuccess'">결제 완료 페이지</button >
</div>




<style>
	.rounded-button1 {
		display: inline-block;
		width: 241px;	/* 버튼의 가로 크기 지정 */
		height: 100px;	/* 버튼의 세로 크기 지정 */
		border-radius:	50px; /* 둥근 사각형 모양을 위해 적절한 값 설정 */
    	background: url('/resources/images/kcp.png') center/cover no-repeat; /* 이미지 배경으로 설정 */
		margin-left: 20px; /* 좌측 여백 추가 */
		margin-right: 20px; /* 우측 여백 추가 */
	}
</style>
<style>
	.rounded-button2 {
		display: inline-block;
		width: 241px;	/* 버튼의 가로 크기 지정 */
		height: 100px;	/* 버튼의 세로 크기 지정 */
		border-radius:	50px; /* 둥근 사각형 모양을 위해 적절한 값 설정 */
    	background: url('/resources/images/kakaopay.png') center/cover no-repeat; /* 이미지 배경으로 설정 */
    	margin-left: 20px; /* 좌측 여백 추가 */
		margin-right: 20px; /* 우측 여백 추가 */
	}
</style>
<style>
	.rounded-button3 {
		display: inline-block;
		width: 241px;	/* 버튼의 가로 크기 지정 */
		height: 100px;	/* 버튼의 세로 크기 지정 */
		border-radius:	50px; /* 둥근 사각형 모양을 위해 적절한 값 설정 */
    	background: url('/resources/images/tosspay.png') center/cover no-repeat; /* 이미지 배경으로 설정 */
    	margin-left: 20px; /* 좌측 여백 추가 */
		margin-right: 20px; /* 우측 여백 추가 */
	}
</style>


<script>
	var IMP = window.IMP; 
    IMP.init("imp81120017"); 
      
    var donateName = '<%=donateName%>';
    var donatePhoneNumber = '<%=donatePhoneNumber%>';
    var donateEmail = '<%=donateEmail%>';
    var donateMoney = '<%=donateMoney%>';
    var donateSelect = '<%=donateSelect%>';
    var donateMessage = '<%=donateMessage%>';

	var today = new Date();
	var hours = today.getHours(); // 시
	var minutes = today.getMinutes(); // 분
	var seconds = today.getSeconds(); // 초
	var milliseconds = today.getMilliseconds();
	var makeMerchantUid = hours + minutes + seconds + milliseconds;

	function requestPay1() {
		IMP.request_pay({
			pg : 'kcp', // pg사
			pay_method : 'card', // 결제 수단
//			merchant_uid: "ORD20231111-0000001", // 주문번호
			name : donateSelect, // 상품 이름
			amount : donateMoney, // 총 결제 금액
			buyer_name : donateName, // 구매자 이름
			buyer_tel : donatePhoneNumber, // 구매자 전화번호
			buyer_email : donateEmail // 구매자 이메일
		}, function(rsp) { // callback
			if (rsp.success) {
				console.log(rsp);
			} else {
				console.log(rsp);
			}
		});
	}

	function requestPay2() {
		IMP.request_pay({
			pg : 'kakaopay', // pg사
			pay_method : 'card', // 결제 수단
//			merchant_uid: "ORD20231111-0000002", // 주문번호
			name : donateSelect, // 상품 이름
			amount : donateMoney, // 총 결제 금액
			buyer_name : donateName, // 구매자 이름
			buyer_tel : donatePhoneNumber, // 구매자 전화번호
			buyer_email : donateEmail	// 구매자 이메일
		}, function(rsp) { // callback
			if (rsp.success) {
				console.log(rsp);
			} else {
				console.log(rsp);
			}
		});
	}

	function requestPay3() {
		IMP.request_pay({
			pg : 'tosspay',
			pay_method : 'card',
//			merchant_uid : 'ORD20231114-000003',
			name : donateSelect, // 상품 이름
			amount : donateMoney, // 총 결제 금액
			buyer_name : donateName, // 구매자 이름
			buyer_tel : donatePhoneNumber, // 구매자 전화번호
			buyer_email : donateEmail	// 구매자 이메일
		}, function(rsp) { // callback
			if (rsp.success) {
				console.log(rsp);
			} else {
				console.log(rsp);
			}
		});
	}
</script>
<script>
	console.log("후원자 성함: " + donateName);
	console.log("후원자 휴대폰 번호: " + donatePhoneNumber);
	console.log("후원자 이메일: " + donateEmail);
	console.log("선택한 후원 금액: " + donateMoney);
	console.log("선택한 후원 목적: " + donateSelect);
	console.log("후원자 메세지: " + donateMessage);
</script>


<%@ include file="../layouts/footer1.jsp"%>
