<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
<script src ="https://code.jquery.com/jquery-3.4.1.js"></script>
<script src="http://code.jquery.com/jquery-1.6.4.min.js"></script>
	<script type="text/javascript">
		$(function(){
			var chkObj = document.getElementsByName("RowCheck");
			var rowCnt = chkObj.length;
			
			$("input[name='allCheck']").click(function(){
				var chk_listArr = $("input[name='RowCheck']");
				for (var i=0; i<chk_listArr.length; i++){
					chk_listArr[i].checked = this.checked;
				}
			});
			$("input[name='RowCheck']").click(function(){
				if($("input[name='RowCheck']:checked").length == rowCnt){
					$("input[name='allCheck']")[0].checked = true;
				}
				else{
					$("input[name='allCheck']")[0].checked = false;
				}
			});
		});
		function deleteValue(){
			var url = "delete";    // Controller로 보내고자 하는 URL
			var valueArr = new Array();
		    var list = $("input[name='RowCheck']");
		    for(var i = 0; i < list.length; i++){
		        if(list[i].checked){ //선택되어 있으면 배열에 값을 저장함
		            valueArr.push(list[i].value);
		        }
		    }
		    if (valueArr.length == 0){
		    	alert("선택된 예약정보가 없습니다.");
		    }
		    else{
				var chk = confirm("정말 취소하시겠습니까?");				 
				$.ajax({
				    url : url,                    // 전송 URL
				    type : 'POST',                // POST 방식
				    traditional : true,
				    data : {
				    	valueArr : valueArr        // 보내고자 하는 data 변수 설정
				    },
	                success: function(jdata){
	                    if(jdata = 1) {
	                        alert("예약이 취소되었습니다");
	                        location.replace("list") //list 로 페이지 새로고침
	                    }
	                    else{
	                        alert("삭제 실패");
	                    }
	                }
				});
			}
		}
	</script>





<title>예약정보확인</title>
</head>
<style> 
@import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap'); 
* {
  padding: 0;
  margin: 0;
}
body {
  background-color: white;
  color: black;
  
  
}
container {
  max-width: 700px;
  margin: 0 auto;
  box-sizing: border-box;
  height: 100vh;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  align-items: center;
}

header {
  display: flex;
  justify-content: space-around;
  width: 100%;
  align-items: center;
  padding: 1.2rem 0;
  background-color: #baddf9;
  font-family: 'Do Hyeon', sans-serif;
}
header > p {
  font-size: 1.5rem;
  font-weight: 700;
  color : white;
  font-family: 'Do Hyeon', sans-serif;
}
header > ul {
  display: flex;
  margin-right: 10%;
}
header > ul >li {
  list-style-type: none;
  margin-left: 1.5rem;
}

header > ul > li > a {
  text-decoration: none;
  font-size: 1.2rem;
  font-weight: 800;
  padding-bottom: 5px;
  color: #89abc6;
}


header > ul > li >a:hover {
  border-bottom: 5px solid white ;
}
@media screen and (max-width:600px){
  header {
    flex-direction: column;
  }
}


li {
	list-style-type: none;
}

section {
  padding: 0 3rem;
  text-align: center;
}
section > p {
  margin-bottom: 2rem;
}
section > p:first-child {
  font-size: 2rem;
  font-weight: 900;
}
section > p:last-of-type {
  font-size: 1.3rem;
  font-weight: 500;
}
section > a {
  display: block;
  border: 1px solid black;
  width: 150px;
  font-size: 1.3rem;
  font-weight: 600;
  margin: auto;
  padding: 1rem;
  border-radius: 10px;
  text-decoration: none;
  background-color: white;
}
footer {
  margin-bottom: 2rem;
  font-size: 1.1rem;
  color: gray;
}
footer > a{
  text-decoration: none;
  color: white;
}

.horizontal {
    list-style-type:none; 
    margin:40 auto; 
    width:640px; 
    padding:0;  
    overflow:hidden;
}
.horizontal > li {
    float:left;
}
.horizontal li ul {
    display: none;
    margin: 0;
    padding: 0;
    list-style: none;
    position: relative;
    width: 100%;
}
.horizontal li:hover ul {
    display: block;
}
.horizontal li a {
    display: block; 
    text-decoration:none; 
    text-align:center; 
    padding:10px 25px;
    font-family:Arial; 
    font-size:12pt; 
    font-weight:bold; 
    color: white; 
    text-transform:uppercase; 
    letter-spacing:.08em;
}

.horizontal li a:hover {
    color: #89abc6;
}

.horizontal li:first-child a { border-left:0 }
.horizontal li:last-child a { border-right:0; }

table{
  border: 1px #a39485 solid;
  font-size: .9em;
  box-shadow: 0 2px 5px rgba(0,0,0,.25);
  width: 80%;
  border-collapse: collapse;
  border-radius: 5px;
  overflow: hidden;
  margin-left:auto; 
  margin-right:auto;
}

th{
	text-align:left;
}

thead{
	font-weight : bold;
	color:#fff;
	background : #baddf9;
}


</style>
<body>
	<div class="wrapper">
	    <div class="container">
	    	 <header>
			   <p onclick ="location.href = '/board/main'" style="font-family: 'Do Hyeon', sans-serif;">통합버스시스템</p>
			   <div class="navbar">
				<ul class="horizontal">               
				   <li><a href="#">버스조회 </a>
				   		<ul>
				            <li><a href="#">통학버스 조회 </a></li>
				            <li><a href="#">시내버스 정보 </a></li>
				            <li><a href="#">시외버스 정보 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">운행정보 </a>
				   		<ul>
				            <li><a href="#">버스회사안내 </a></li>
				            <li><a href="/board/schoolbusinfog1">운행/노선 정보 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">렌트카/택시 </a>
				        <ul>
				            <li><a href="/board/rent">렌트카 </a></li>
				            <li><a href="/board/taxi">택시 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">고객지원 </a>
				   		<ul>
				            <li><a href="/notice/list">공지사항 </a></li>
				            <li><a href="/suggestion/list">건의사항 </a></li>
				            <li><a href="/board/customer_center">고객센터 </a></li>
				        </ul>
				   </li>
				   <li><a href="/customer/modify">회원정보</a></li>
				</ul>
			</div>
			</header>
		<br><br>
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">
					</div>

					<!-- /.panel-heading -->
		  			<div class="panel-body">
						<table class="table table-striped table-bordered table-hover" >
							<thead>
								
								<tr>
									<th><input id = "allCheck" type = "checkbox" name = "allCheck"/></th>
									<th>번호</th>
									<th>날짜</th>
									<th>출발지</th>
									<th>목적지</th>
									<th>출발시간</th>
									<th>버스이름</th>
									<th>좌석번호</th>
								</tr>
							</thead>

							<c:forEach items="${list}" var="reservation">
								<tr>
									<td> <input name = "RowCheck" type = "checkbox" value ="${reservation.rno}" /></td>
									<td><c:out value="${reservation.rno}" /></td>
									<!-- //fmt:formatDate pattern="yyyy.MM.dd" -->
									<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${reservation.rdate}" /></td>
									<td><c:out value="${reservation.origin}"/></td>
									<td><c:out value="${reservation.destination}" /></td>
									<td><c:out value="${reservation.rtime}" /></td>
									<td><c:out value="${reservation.busname}" /></td>
									<td><c:out value="${reservation.seatno}" /></td>
							
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
		<br>
		<br>
		<div class="btnSubmit" align="center" style="text-align: center;">
            			<input type="button" class = "booksubmit" id = "delete_btn" value = "예약취소하기" onclick= "deleteValue();">
            			
            			<input type="button" class = "booksubmit" id = "modify_btn" value = "좌석바꾸기" onclick="location.href='/select/seat'"/>
    
       				</div>
		
       				
       				
  
</body>	
</html>