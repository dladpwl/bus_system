<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@include file="../includes/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>건의사항</title>
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
  margin-bottom: 1rem;
}
section > p:first-child {
  font-size: 2rem;
  font-weight: 900;
}
section > p:last-of-type {
    font-size: 2rem;
    font-weight: bold;
    color: #337ab7;
}
section > a {
  display: block;
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

button {
    width: 150px;
    padding: 12px 10px;
    margin: auto;
    display: inline;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    background-color: #337AB7;
    color: white;
}

.modal-open{overflow:hidden}
.modal{
	position:fixed;
	top:0;
	right:0;
	bottom:0;
	left:0;
	z-index:1050;
	display:none;
	overflow:hidden;
	-webkit-overflow-scrolling:touch;
	outline:0
}

table {
	width:80%; 
	margin-left: auto; 
	margin-right: auto; 
	border-left:none; 
	border-right:none;
}

label {
	font-weight: bold;
}

.form-control {
	width: 100%;
	margin-top: 10px;
	margin-bottom: 10px;
	
}



</style>
<body>
	<div class="wrapper">
	    <div class="container">
	    	 <header>
			   <p onclick ="location.href = '/board/main'">통합버스시스템</p>
			   <div class="navbar">
				<ul class="horizontal">               
				   <li><a href="#">버스조회 </a>
				   		<ul>
				            <li><a href="/select/resinfo">통학버스 조회 </a></li>
				            <li><a href="/bus/bus200">시내버스 정보 </a></li>
				            <li><a href="/bus/busGJ">시외버스 정보 </a></li>
				        </ul>
				   </li>
				   <li><a href="#">운행정보 </a>
				   		<ul>
				            <li><a href="/bus/busNara">버스회사안내 </a></li>
				            <li><a href="/bus/schoolbusinfog1">운행/노선 정보 </a></li>
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
	<section>
		<p>건의사항</p>
		<div class="container" style= "margin-top: 60px; border-bottom: 4px solid #01428c">
			<h3 style="margin-bottom: 20px; text-align : center; font-weight: bold;"> 건의사항 수정하기 </h3>
    	</div>
    	
    	<div class=container style="width: 100%; margin-top: 40px;">
    		<form role="form" action="/suggestion/modify" method="post">
		        <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum }"/>'>
		        <input type='hidden' name='amount' value='<c:out value="${cri.amount }"/>'>
		        <%-- 
			    <input type='hidden' name='type' value='<c:out value="${cri.type }"/>'>
				<input type='hidden' name='keyword' value='<c:out value="${cri.keyword }"/>'>
				--%>
		      <table style="margin-bottom: 40px;">
				<tbody>
				  <tr>
				    <td colspan="1" style="border-bottom:1px solid #dddddd;"><label>번호</label></td>
				    <td colspan="1" style="border-bottom:1px solid #dddddd;"><input class="form-control" name='bno' 
		    			 value='<c:out value="${suggestion.bno }"/>' readonly="readonly"></td>
		    		<td colspan="1"></td>
				    <td colspan="1" style="border-bottom:1px solid #dddddd;"><label>제목</label></td>
				    <td colspan="5" style="border-bottom:1px solid #dddddd;"><input class="form-control" name='title' 
		   				 value='<c:out value="${suggestion.title }"/>' ></td>
				  </tr>
				  <tr>
				  	<td colspan="1" style="border-bottom:1px solid #dddddd;"><label>작성자</label></td>
				    <td colspan="2" style="border-bottom:1px solid #dddddd;"><input class="form-control" name='writer'
		    			 value='<c:out value="${suggestion.writer}"/>' readonly="readonly"></td>
				    <td colspan="1" style="border-bottom:1px solid #dddddd;"><label>작성일</label></td>
				    <td colspan="2" style="border-bottom:1px solid #dddddd;"><input class="form-control" name='regDate'
		   				 value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${suggestion.regdate}" />'  readonly="readonly"></td>
				    <td colspan="1" style="border-bottom:1px solid #dddddd;"><label>수정일</label></td>
				    <td colspan="2" style="border-bottom:1px solid #dddddd;"><input class="form-control" name='updateDate'
		   				 value='<fmt:formatDate pattern = "yyyy/MM/dd" value = "${suggestion.updateDate}" />'  readonly="readonly"></td>
				  </tr>
				  <tr>
				    <td colspan="1" style="border-bottom:1px solid #dddddd;"><label>내용</label></td>
		            <td colspan="8" style="border-bottom:1px solid #dddddd;"><textarea class="form-control" rows="20" name='content'><c:out value="${suggestion.content}"/></textarea></td>
				  </tr>
				</tbody>
			  </table>  
		
		  <button type="submit" data-oper='modify' class="btn btn-default">수정하기</button>
		  <button type="submit" data-oper='remove' class="btn btn-danger">삭제하기</button>
		  <button type="submit" data-oper='list' class="btn btn-info">목록</button>
		</form>
      </div>
	</section>
  </div>
</div>
    
<script type="text/javascript">
$(document).ready(function() {


	  var formObj = $("form");

	  $('button').on("click", function(e){
	    
	    e.preventDefault(); 
	    
	    var operation = $(this).data("oper");
	    
	    console.log(operation);
	    
	    if(operation === 'remove'){
	      formObj.attr("action", "/suggestion/remove");
	      
	    }else if(operation === 'list'){
	      //move to list
	      formObj.attr("action", "/suggestion/list").attr("method","get");
	      
	      var pageNumTag = $("input[name='pageNum']").clone();
	      var amountTag = $("input[name='amount']").clone();
	      <%-- 
	      var keywordTag = $("input[name='keyword']").clone();
	      var typeTag = $("input[name='type']").clone();      
	      --%>
	      
	      formObj.empty();
	       
	      formObj.append(pageNumTag);
	      formObj.append(amountTag);
	      <%--
	      formObj.append(keywordTag);
	      formObj.append(typeTag);
	      --%>	       
	    }
	    
	    formObj.submit();
	  });

});
</script>
  




<%@include file="../includes/footer.jsp"%>

