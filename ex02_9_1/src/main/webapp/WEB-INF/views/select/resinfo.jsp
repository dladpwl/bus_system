<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<html>
<head>

<%@include file="./bootstrap.jsp"%>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">


<title>통학버스 좌석 예매</title>

<style>
* {
  padding: 0;
  margin: 0;
}
body {
  background-color: rgb(240,248,255);
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
  background-color: white;
}
header > p {
  font-size: 1.5rem;
  font-weight: 700;
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
  color: #9cd3ff;
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
  border: 1px solid #0d74d3;
  width: 450px;
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
    color: #a9cff8; 
    text-transform:uppercase; 
    letter-spacing:.08em;
}

.horizontal li a:hover {
    color:#0d74d3;
}

.horizontal li:first-child a { border-left:0 }
.horizontal li:last-child a { border-right:0; }


table {
		width : 80%;
		margin-left:auto;
		margin-right:auto;
		border-collapse: separate;	
		border-radius:8px;
	}

	th, td{
		padding:10px;
		font-size:14px;
		text-align:center;
	}
	th:first-child, td:first-child {
    	border-left: none;
  	}
  	th{
  		background-color: #a6cdff;
  		color:white;
  	}
  	td{
  		background-color:white;
  	}
	.header{
		border-bottom: 5px solid #ff9090;
		background-color:white;
		padding:20px 10px;
	}
	h2{
		margin:0;
		font-family: 'Do Hyeon', sans-serif;
		font-size:35px;
	}
	
	button{
		width: 150px;
      	padding:12px 10px;
      	margin:auto;
      	display:inline;
      	border : 1px solid #ccc;
      	border-radius : 4px;
      	box-sizing:border-box;
      	background-color:#ff9090;
      	color:white;
	}
	

	#box{
		width:500px;
		height:150px;
		background-color:#FFF;
		border: 15px solid #fff; 
		padding:15px;
		box-sizing: content-box;
		margin:0 auto;
		margin-left:32%;
		
		

	
　　}

</style>
<body>
<body>
	<div class="wrapper">
	    <div class="container">

	    	 <header>
			   <p onclick ="location.href = '/board/main'">통합버스시스템</p>
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
			</div>
		<br><br>
		
      		
   
               <div id="box" style="margin-right: 20px; height: 20%; vertival-align:middle; text-align-last:center">
				<h3>좌석 예매</h3>
				<br>
			
				 <label>날짜 선택 </label> <input type="date" class="testDatepicker"
                     id="GoDateChoose" style="width: 20%" placeholder="출발 날짜 선택" >
				  <br>
				  <br>
                  <label>출발지 선택 </label>
                  <form id = 'searchForm' action = "/select/list" method ='get'>
                  	<select class="selectOptions" id="origin" 	style = "vertival-align:middle; text-align-last:center; vertival-align:middle; text-align-last:center" 
                    	 name = 'type'>
                  
                     <option>출발지 선택</option><optgroup label="목포">
                        <option value="T" style="width: 100%" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>목포대학교</option>
                        <option value="T" style="width: 100%" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>대성초등학교</option>
                        <option value="T" style="width: 100%" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>신안병원건너편</option>
                        <option value="T" style="width: 100%" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>옥암주공승강장</option>
                     </optgroup>
                      <optgroup label="광주">
                        <option value="T" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>염주체육관 건너편육교</option>
                        <option value="T" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>금호지구중흥</option>
                        <option value="T" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>시립장애인복지관</option>
                     </optgroup>
                  	</select> 
                  	</form>
                  <br>
                 
                  <label>목적지 선택 </label> 
                  <form id = 'searchForm' action = "/select/list" method ='get'>
                  	<select class="selectOptions" id="destination" 	style = "vertival-align:middle; text-align-last:center; vertival-align:middle; text-align-last:center" 
                     	name = 'type'>
                     <option>목적지 선택</option>
                     
                     <optgroup label="목포">
                        <option value="C" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>목포대학교</option>
                        <option value="C" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>대성초등학교</option>
                        <option value="C" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>신안병원건너편</option>
                        <option value="C" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>옥암주공승강장</option>
                     </optgroup>
                     <optgroup label="광주">
                        <option value="C" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>염주체육관 건너편육교</option>
                        <option value="C" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>금호지구중흥</option>
                        <option value="C" style="width: 100%"
                        	<c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>시립장애인복지관</option>
                     </optgroup>
                  
                  </select> 
                  <br>
                  <br>
                  	<button class='btn btn-default' onclick="location.href='/select/list'">조회하기</button>
                  
                </form>
                <br>
             
               
               </div>
            		
</div>	

</body>
</html>