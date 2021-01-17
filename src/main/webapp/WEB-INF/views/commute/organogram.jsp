<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>ontact, 서로 연결되는 온라인 공간</title>
    <link href="${pageContext.request.contextPath}/resources/css/reset.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>    
    <style>
  *{
        margin : 0;
    }
    body{
        width : 100%;
        height: 100%;
        position: relative;
        font-size: 14px;
        font-family: Noto Sans KR;
        line-height: 1.15;
        color: rgb(17,17,17);
    }
    a{
        text-decoration: none;
        color: rgb(17,17,17);;
    }

    .header{
        position: relative;
        width: 100%;
        height: 60px;
    }
    .header div{
        width: 1200px;
        height: 60px;
        margin: 0 auto;
    }
    /* 본문 */
    .main{
        position: relative;
        width: 1200px;
        height: 100%;
        margin: 0 auto;
    }
    /* 사이드메뉴 */
    .sidenav{
        position: relative;
        width: 210px;
        height: 100%;
        float: left;
    }
    .sidenav ul,
    .sidenav ul li a {
        display: block;
        color: black;
    }
    .sidenav ul li{
        display: block;
        font-size: 16px;
    }
    .sidenav ul ul {
    display: none;
    }
    .sidenav > ul > li > a {
    padding: 19px 20px;
    z-index: 2;  
    cursor: pointer;
    font-weight: 700;
    text-decoration: none;
    }
    .sidenav ul ul li{
        background-color: #e7e7e7;
    }
    .sidenav ul ul li a {
    cursor: pointer;
    padding: 10px 0;
    padding-left: 30px;
    z-index: 1;
    text-decoration: none;
    font-size: 13px;
    }
    /* 콘텐츠 */
    .contents{
        position: absolute;
        width: 970px;
        height: 950px;
        left: 210px;
        padding : 40px 0 40px 40px;
        border-left: 1px solid #e7e7e7;
        box-sizing: border-box;
    }
    .conTitle{
        width: 930px;
        height: 40px;
        line-height: 40px;
        padding-bottom: 20px;
        font-size: 32px;
        border-bottom: 1px solid #e7e7e7;
    }
    .search{
        position: absolute;
        width: 200px;
        height: 60px;
        padding: 10px 15px;
        margin-top: 30px;
        line-height: 40px;
        border: 1px solid #e7e7e7;
        box-sizing: border-box;
        border-bottom: 0;
        
    }
    .search input{
        width: 130px;
        height: 30px;
        border: 1px solid #e7e7e7;
        /* border-right: 0; */
        box-sizing: border-box;
    }
    #searchBtn{
        width: 33px;
        height: 30px;
        background-color: white;

        color:#F2F2F2;
        border : 1px solid #e7e7e7;
        /* border-left: 0; */
        box-sizing: border-box;
        vertical-align: middle;   
    }
    #searchBtn img{
        width: 15px;
        height: 15px;
        margin-top: 3px;
    }
    .team{
        position: absolute;
        top: 190px;
        width: 200px;
        height: 400px;
        border: 1px solid #e7e7e7;
        border-bottom: 0;
        box-sizing: border-box;
        
    }
    .team ul li{
        width: 158px;
        height: 40px;
        line-height: 40px;
        padding-left: 40px;    
    }
    .team ul li:nth-child(1){
        width: 183px;
        padding-left: 15px;    
    }
    #deptBtn{
        width: 14px;
        height: 14px;
        background-color: white;
        border: 1px solid #d1d1d1;
        box-sizing: border-box;
        font-size: 8px;
        margin: 0;
        padding: 0;
        color: black;
        vertical-align: middle;
    }
    .notyet{
        position: absolute;
        top : 590px;
        width: 200px;
        height: 40px;
        line-height: 40px;
        padding-left: 15px;
        border: 1px solid #e7e7e7;
        border-bottom: 0;
        box-sizing: border-box;
        
    }
    .deptEdit{
        position: absolute;
        top : 630px;
        width: 200px;
        height: 50px;
        line-height: 50px;
        padding-left: 15px;
        float: left;
        border: 1px solid #e7e7e7;
        box-sizing: border-box;
        
    }
    .deptEdit button{
        background-color: white;
        border: none;
        padding-top: 3px;
        margin-top: 10px;
        margin-right: 3px;
    }
    .detail{
        position: absolute;
        width: 710px;
        height: 549px;
        left: 260px;
        margin-top: 30px;
        padding: 15px 15px 0 15px;
        border: 1px solid #e7e7e7;
        box-sizing: border-box;
        
    }
    .title{
        height: 44px;
        line-height: 44px;
        border-bottom: 1px solid #e7e7e7;
        font-size: 18px;
        font-weight: 700;
    }
    .title span{
        margin-left: 10px;
        font-size: 12px;
        font-weight: 400;
    }
    .detail table{
        width: 678px;
        font-size: 12px;
        text-align: center;
    }
    .detail table tr{
        height: 36px;
        line-height: 35px;
        border-bottom: 1px solid #e7e7e7;
    }
    .detail table tr:nth-last-child(1){
        height: 37px;
    }
    .detail table tr td{
        padding-left: 10px;
    }
    .move_wrap{
        width: 710px;
        height: 50px;
        line-height: 52px;
    }
    #moveBtn{
        padding: 0;
        margin: 0;
        width: 150px;
        height: 30px;
        background-color: #F2F2F2;
        border: none;
        border-radius: 3px;
    }
    </style>
    <script>
        // html dom 이 다 로딩된 후 실행된다.
        $(document).ready(function() {
	        $('.sidenav li.menu>a').on('click', function(){
			$(this).removeAttr('href');
			var element = $(this).parent('li');
			if (element.hasClass('open')) {
				element.removeClass('open');
				element.find('li').removeClass('open');
	            element.find('ul').slideUp();
			}
			else {
				element.addClass('open');
				element.children('ul').slideDown();
				element.siblings('li').children('ul').slideUp();
				element.siblings('li').removeClass('open');
				element.siblings('li').find('li').removeClass('open');
	            element.siblings('li').find('ul').slideUp();
			}
		    });
	        
	        $("#dept").on("click", function(){
	        	var dname = $("#dname").val();
	        	console.log(dname);
	        	$("#depttitle").val(dname);
	        })
			
	    $()
    	});
    </script>
</head>
<body>
    <div class="header">
        <div>헤더 들어갈 자리</div>
    </div>
    <div class="main">
        <div class="sidenav">
            <ul>
                <li class="menu"><a href="">근태 관리</a>
                <ul class="hide">
						<li><a href="${pageContext.request.contextPath}/commute/dailylist">출퇴근 관리</a></li>
						<li><a href="${pageContext.request.contextPath}/commute/monthlylist">월 근무내역</a></li>
						<li><a href="${pageContext.request.contextPath}/overwork/owlist">시간외 근무신청</a></li>
					</ul></li>
				<li class="menu"><a href="">휴가 관리</a>
					<ul class="hide">
						<li><a href="${pageContext.request.contextPath}/dayoff/dflist">휴가 신청</a></li>
						<li><a href="${pageContext.request.contextPath}/dayoff/calendarlist">휴가 현황</a></li>
					</ul></li>
				<li><a href="${pageContext.request.contextPath}/commute/organlist">조직도</a></li>
            </ul>
        </div>
    <div class="contents">
        <div class="conTitle">조직도</div>
            <div class="article">
                <form action="/commute/organlist" method="get">
                <div class="search">
                    <input type="text" name="keyword">
                    <button id="searchBtn"><img src="${pageContext.request.contextPath}/resources/img/search.png"></button>
                </div>
                </form>
                <div class="team">
                    <ul>
                        <li style="font-weight: 700;">
                            <button id="deptBtn"><img src ="${pageContext.request.contextPath}/resources/img/substract.png" style="width: 8px; height: 8px;"></button>
                            &nbsp; ONTACT<span>(${deptlistCount})</span>
                        </li>
                        <c:if test="${not empty selectDept}">
							<c:forEach var="dp" items="${selectDept}" varStatus="status">
                        	<li><a href="${pageContext.request.contextPath}/commute/organlist?dname=${dp.dname}"id="dept">
                        	<input type ="hidden" value="${dp.dname}" name="dname" id="dname">${dp.dname} </a></li>
                        	</c:forEach>
                        </c:if>
                    </ul>
                </div>
                <div class="notyet">
                    <div><a href="">미분류그룹 &nbsp; <span>(0)</span></a></div>
                </div>
                <div class="deptEdit">
                    <button id="addBtn"><img src="${pageContext.request.contextPath}/resources/img/add.png" style="width: 19px; height: 20px;"></button>
                    <button id="deleteBtn"><img src="${pageContext.request.contextPath}/resources/img/trash (1).png" style="width: 19px; height: 20px;"></button>
                    <button id="editBtn"><img src="${pageContext.request.contextPath}/resources/img/edit-1.png" style="width: 19px; height: 20px;"></button>
                </div>
                <div class="detail">
                
                    <div class="title"><input type="text" id="depttitle" value="" readonly> 총 <span>${userslistCount}</span>명</div>
                    
                    <div>
                        <table>
                            <tr>
                                <th>선택</th>
                                <th>부서</th>
                                <th>이름</th>
                                <th>직급</th>
                                <th>이메일</th>
                            </tr>
                        <c:if test="${not empty selectOgUser}">
						<c:forEach var="og" items="${selectOgUser}" varStatus="status">
                            <tr>
                                <td><input type="checkbox" name="chk" value="ok" class="chkbox"></td>
                                <td>${og.dname}</td>
                                <td>${og.uname}</td>
                                <td>${og.urank}</td>
                                <td>${og.uemail}</td>
                            </tr>
                        </c:forEach>
                       	</c:if>
                       
                            <!-- 앞 페이지 번호 처리 -->
					<tr>
						<td colspan="8">
						<c:if test="${currentPage <= 1}">
						&lt; &nbsp;
						</c:if>
						 	<c:if test="${currentPage > 1}">
								<c:url var="dflistprev" value="/dayoff/dflist">
									<c:param name="page" value="${currentPage-1}" />
								</c:url>
								<a href="${dflistprev}">&lt; &nbsp; &nbsp; &nbsp; </a>
							</c:if> 
							<!-- 끝 페이지 번호 처리 -->
							 <c:set var="endPage" value="${maxPage}" /> 
							 <c:forEach
								var="p" begin="${startPage+1}" end="${endPage}">
								<!-- eq : == / ne : != -->
								<c:if test="${p eq currentPage}">
									<font color="red" size="4"><b>${p} &nbsp; &nbsp; &nbsp;</b></font>
								</c:if>
								<c:if test="${p ne currentPage}">
									<c:url var="dflistchk" value="/dayoff/dflist">
										<c:param name="page" value="${p}" />
									</c:url>
									<a href="${dflistchk}">${p} &nbsp; &nbsp; &nbsp;</a>
								</c:if>
							</c:forEach> 
							<c:if test="${currentPage >= maxPage}"> &nbsp; &gt;
							</c:if>
							<c:if test="${currentPage < maxPage}">
								<c:url var="dflistnext" value="/dayoff/dflist">
									<c:param name="page" value="${currentPage+1}" />
								</c:url>
								<a href="${dflistnext}">&nbsp; &gt;</a>
							</c:if>
							</td>
					</tr>
                        </table>
                    </div>
                    <div class="move_wrap">
                        <button id="moveBtn">다른 조직으로 이동</button>
                        &nbsp; <span>0명</span>
                    </div>
                </div>
            </div>
    </div>
</div>
<script>
        $(function() {
            //input을 datepicker로 선언
            $.datepicker.setDefaults({
                dateFormat: 'yy-mm-dd' //Input Display Format 변경
                ,showOtherMonths: true //빈 공간에 현재월의 앞뒤월의 날짜를 표시
                ,showMonthAfterYear:true //년도 먼저 나오고, 뒤에 월 표시
                ,changeYear: true //콤보박스에서 년 선택 가능
                ,changeMonth: true //콤보박스에서 월 선택 가능                
                // ,showOn: "both" //button:버튼을 표시하고,버튼을 눌러야만 달력 표시 ^ both:버튼을 표시하고,버튼을 누르거나 input을 클릭하면 달력 표시  
                // ,buttonImage: "http://jqueryui.com/resources/demos/datepicker/images/calendar.gif" //버튼 이미지 경로
                // ,buttonImageOnly: true //기본 버튼의 회색 부분을 없애고, 이미지만 보이게 함
                // ,buttonText: "선택" //버튼에 마우스 갖다 댔을 때 표시되는 텍스트                
                ,yearSuffix: "년" //달력의 년도 부분 뒤에 붙는 텍스트
                ,monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'] //달력의 월 부분 텍스트
                ,monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'] //달력의 월 부분 Tooltip 텍스트
                ,dayNamesMin: ['일','월','화','수','목','금','토'] //달력의 요일 부분 텍스트
                ,dayNames: ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'] //달력의 요일 부분 Tooltip 텍스트
                ,minDate: "-48M" //최소 선택일자(-1D:하루전, -1M:한달전, -1Y:일년전)
                ,maxDate: "+12M" //최대 선택일자(+1D:하루후, -1M:한달후, -1Y:일년후)                
            });                    
            $('#startDate').datepicker(); 
            $('#endDate').datepicker(); 
            //초기값을 오늘 날짜로 설정
            $('#startDate').datepicker('setDate', 'today'); //(-1D:하루전, -1M:한달전, -1Y:일년전), (+1D:하루후, -1M:한달후, -1Y:일년후)  
            $('#endDate').datepicker('setDate', 'today');          
        });
    
</script>
</body>
</html>