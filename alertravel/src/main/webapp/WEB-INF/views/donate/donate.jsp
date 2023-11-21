<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>

<%@ include file="../layouts/header1.jsp"%>

<br>
<br>
<br>

<div class="donate_title">
	<h1><i class="fas fa-money-check skill-icon"> 후원하기</i></h1>
</div>

<div class="container mt-5">
	<div class="row justify-content-center">
		<div class="col-md-8">
			<div class="card border-0"> <!-- 외부 선 제거 -->
				<div class="card-body">
					<form action="payment" method="post"> <!-- submit 버튼 누르면 이동할 곳 -->
						<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
						<div class="form-group">
						
							<h3><br>후원자 정보<br></h3>
							
							<!-- 후원자 개인 정보 입력 -->
							<div class="form-group" id="nameInput">
								<label for="donateName">성명</label> 
								<input type="text" name="donateName" class="form-control" placeholder="성명 입력" required>
							</div>
							
							<br>
							
							<div class="form-group" id="birthdayInput">
								<label for="donateBirthday">생년월일</label>
								<input type="text" name="donateBirthday" class="form-control" placeholder="생년월일 6자리 입력" required>
								<pre>※만 14세 미만의 경우, 후원이 불가능합니다.※</pre>
							</div>
							
							<br>
							
							<div class="form-group" id="phoneInput">
								<label for="donatePhoneNumber">휴대폰 번호</label>
								<input type="text" name="donatePhoneNumber" class="form-control" placeholder="휴대폰 번호 입력('-' 제외)" required>
							</div>
							
							<br>
							
							<div class="form-group" id="emailInput">
								<label for="donateEmail">이메일</label>
								<input type="text" name="donateEmail" class="form-control" placeholder="이메일 주소 입력" required>
							</div>
							
							<br>
							<hr color="#F0A07B">
							<br>
						
							<!-- 후원 목적 선택창 -->
                            <label for="select"><b><h5>후원 목적 선택</h5></b></label> 
                            <select class="form-control" name="donateSelect" id="donateSelect">
                                <option value="donateSelect">== 후원 목적 선택 ==</option>
                                <c:forEach var="donateSelect" items="${donateSelectList}">
        							<option value="${donateSelect.donateSelect}">${donateSelect.donateSelect}</option>
                                </c:forEach>
                            </select>
							
							<!-- 글 간격 줄이기 -->
							<div style="height: 0.5em;" id="descriptionOutput"></div> 
							<!-- 후원 목적 상세 내역 ( https://chat.openai.com/c/3d939fa5-5483-47c0-837c-c446eb0c5447 참고 ) -->
							후원 목적 설명 나오게 하는거 포기! (매핑만 성공...)
							
							<br>
							<br>
							
							<!-- 후원 금액 선택창 -->
							<label for="donateOption"><b><h5>후원 금액 선택</h5></b></label>
							<select class="form-control" name="donateMoney" id="donateMoney">
								<option value="donateMoney">== 후원 금액 선택 ==</option>
							    <c:forEach var="donateMoney" items="${donateAmountList}">
        							<option value="${donateMoney.donateMoney}">${donateMoney.donateOption}</option>
   								</c:forEach>
							</select>
						</div>
						
					
						
						<div class="form-group">
							<label for="donateMessage"><h5><b>응원 메시지</b></h5></label>
							<textarea class="form-control" name="donateMessage" rows="3"	placeholder="응원 메시지를 남겨주세요" required></textarea>
						</div>
						
						<br>
						<hr color="#F0A07B">
						<br>
						
						<!-- 후원 요약 정보를 보여줄 컨테이너 -->
						<div id="summaryContainer" style="display: none;">
							<label for="summary"><h5><b>후원 요약</b></h5></label>
								<p id="summaryText"></p>
						</div>
						
						<button type="submit" class="btn btn-block">후원하기</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<script>
  // 함수를 만들어 후원 목적 및 후원 금액에 대한 요약을 업데이트
  function updateSummary() {
    var summaryContainer = document.getElementById('summaryContainer');
    var summaryText = document.getElementById('summaryText');
    
    // 선택한 후원 목적 및 후원 금액 가져오기
    var selectedOption = document.getElementById('donateSelect').
    						options[document.getElementById('donateSelect').selectedIndex].text;
    var selectedAmount = document.getElementById('donateAmount').
    						options[document.getElementById('donateAmount').selectedIndex].text;
    
    // 항상 요약을 표시
    summaryContainer.style.display = 'block';
    summaryText.innerText = "선택하신 후원 목적: " + selectedOption +
                            "\n선택하신 후원 금액: " + selectedAmount;
  }

  // 후원 금액 변경 시 이벤트 처리
  document.getElementById('donateAmount').addEventListener('change', function() {
    updateSummary();
  });

  // 후원 목적 변경 시 이벤트 처리
  document.getElementById('donateSelect').addEventListener('change', function() {
    updateSummary();
  });

  // 초기 로딩 시 실행
  window.addEventListener('load', function() {
    // 처음에 숨겨둔 요약 컨테이너를 표시
    document.getElementById('summaryContainer').style.display = 'block';
  });
</script>

<script>
	// 후원 목적과 설명을 매핑할 객체 -- 후원 목적 설명 포기! 못해먹겠네!
	var descriptionMap = {
		<c:forEach var="donateSelect" items="${donateSelectList}">
			'${donateSelect.donateSelect}': '${donateSelect.donateDescription}'
		</c:forEach>
	};
</script>


<style>
	.donate_title {
		padding: 50px 300px 50px; /* 패딩: 위, 좌우, 아래 */
	    background-color: #F0A07B;
    	border-color: #F0A07B;
		color: white;
	}
</style>

<style>
	.btn {
	    background-color: #F0A07B;
    	border-color: #F0A07B;
		color: white;
	}
</style>


<%@ include file="../layouts/footer.jsp"%>