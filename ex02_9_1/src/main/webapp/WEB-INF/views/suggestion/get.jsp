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
  margin-bottom: 2rem;
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
		<div class="container" style="margin-top: 60px; border-bottom: 4px solid #01428c">
			<p style="margin-bottom: 20px; font-size: 2rem; text-align : center; font-weight: bold;"> 건의사항 </p>
		</div>
				
		<div class="container" style="margin-top: 30px; margin-bottom: 30px">
		  <div class="row">
		    <table class="table">
		      <tbody>
		        <tr>		        
		          <td colspan="4" style="text-align: left; font-weight: bold;"><c:out value="${suggestion.title }"/></td>
		        </tr>
		        <tr>
		          <td colspan="2" style="text-align: left; font-weight: bold;"><c:out value="${suggestion.writer }"/></td>
		          <td colspan="2" style="text-align: left; font-weight: bold;"><fmt:formatDate pattern="yyyy-MM-dd" value="${suggestion.regdate}" /></td>
		        </tr>
		        <tr>
		          <td colspan="4" style="height: 300px; text-align: left; vertical-align: top;"><c:out value="${suggestion.content}"/></td>
            	</tr>
		      </tbody>
		    </table>
		  </div>
		</div>
	
		<div class='row'>
		  <div class="col-lg-12">
		    <!-- /.panel -->
		    <div class="panel panel-default">
		      <div class="panel-heading">
		        <i class="fa fa-comments fa-fw"></i> Reply
		        <button id='addReplyBtn' class='btn btn-primary btn-xs pull-right'>댓글작성</button>
		      </div>
		      <!-- /.panel-heading --> 
		      <div class="panel-body">
		        <ul class="chat">
		        </ul>
		        <!-- /. end ul -->
		      </div>
		      <!--  /.panel .chat-panel -->
		        <div class="panel-footer">
		        </div>
		    </div>
		  </div><!-- /. end row -->
		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
					  <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					  <h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
					</div>
					<div class="modal-body">
					  <div class="form-group">
					    <label>Reply</label>
					    <input class="form-control" name='reply' value='New Reply!!!!'>
					  </div>
					  <div class="form-group">
					    <label>Replyer</label>
					    <input class="form-control" name='replyer' value='replyer'>
					  </div>
					  <div class="form-group">
					    <label>Reply Date</label>
					    <input class="form-control" name='replyDate' value='2018-01-01 13:13'>
					  </div>
					</div>
			  <div class="modal-footer">
			    <button id='modalModBtn' type="button" class="btn btn-warning">Modify</button>
			    <button id='modalRemoveBtn' type="button" class="btn btn-danger">Remove</button>
			    <button id='modalRegisterBtn' type="button" class="btn btn-primary">Register</button>
			    <button id='modalCloseBtn' type="button" class="btn btn-default">Close</button>
			  </div>
				</div>
			</div>
		</div>
		<%-- 		<button data-oper='modify' class="btn btn-default">
		        <a href="/suggestion/modify?bno=<c:out value="${suggestion.bno}"/>">Modify</a></button>
		        <button data-oper='list' class="btn btn-info">
		        <a href="/suggestion/list">List</a></button> --%>
		
		
		<button data-oper='modify' class="btn btn-default">수정하기</button>
		<button data-oper='list' class="btn btn-info">목록</button>
		
		<form id='operForm' action="/suggestion/modify" method="get">
		  <input type='hidden' id='bno' name='bno' value='<c:out value="${suggestion.bno}"/>'>
		  <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
		  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
		</form>
		
	</section>
		<%--
		<form id='operForm' action="/suggestion/modify" method="get">
		  <input type='hidden' id='bno' name='bno' value='<c:out value="${suggestion.bno}"/>'>
		  <input type='hidden' name='pageNum' value='<c:out value="${cri.pageNum}"/>'>
		  <input type='hidden' name='amount' value='<c:out value="${cri.amount}"/>'>
		  <input type='hidden' name='keyword' value='<c:out value="${cri.keyword}"/>'>
		  <input type='hidden' name='type' value='<c:out value="${cri.type}"/>'>  
		</form>
		 --%>



<script thpe="text/javascript" src="/resources/js/reply.js"></script>
<script>

console.log("=============");
console.log("JS TEST");

var bnoValue = '<c:out value="${suggestion.bno}"/>';

replyService.add()
	{reply:"JS Test", replyer:"tester", bno:bnoValue},
	function(result){
		alert("RESULT: "+ result);
	}
);

</script>
<script type="text/javascript">
$(document).ready(function() {
  
  var operForm = $("#operForm"); 
  
  $("button[data-oper='modify']").on("click", function(e){
    
    operForm.attr("action","/suggestion/modify").submit();
    
  });
  
    
  $("button[data-oper='list']").on("click", function(e){
    
    operForm.find("#bno").remove();
    operForm.attr("action","/suggestion/list")
    operForm.submit();
    
  });  
});
</script>

<script type="text/javascript" src="/resources/js/reply.js"></script>
<script>
$(document).ready(function() {
	
	var bnoValue = '<c:out value="${suggestion.bno}"/>';
	var replyUL = $(".chat");
	showList(1);
	
	var modal = $(".modal");
	var modalInputReply = modal.find("input[name='reply']");
    var modalInputReplyer = modal.find("input[name='replyer']");
    var modalInputReplyDate = modal.find("input[name='replyDate']");
    
    var modalModBtn = $("#modalModBtn");
    var modalRemoveBtn = $("#modalRemoveBtn");
    var modalRegisterBtn = $("#modalRegisterBtn");
    
    $("#modalCloseBtn").on("click", function(e){
    	modal.modal('hide');
    });
    
    $("#addReplyBtn").on("click", function(e){
        modal.find("input").val("");
        modal.find("input[name='replyer']").val(replyer);
        modalInputReplyDate.closest("div").hide();
        modal.find("button[id !='modalCloseBtn']").hide();
        
        modalRegisterBtn.show();
        
        $(".modal").modal("show");
        
      });
    
    $(document).ajaxSend(function(e, xhr, options) { 
        xhr.setRequestHeader(csrfHeaderName, csrfTokenValue); 
      }); 

    

    modalRegisterBtn.on("click",function(e){
      
      var reply = {
            reply: modalInputReply.val(),
            replyer:modalInputReplyer.val(),
            bno:bnoValue
          };
      replyService.add(reply, function(result){
        
        alert(result);
        
        modal.find("input").val("");
        modal.modal("hide");
        
        //showList(1);
        showList(-1);
        
      });
      
    });
    
  //댓글 조회 클릭 이벤트 처리 
    $(".chat").on("click", "li", function(e){
      
      var rno = $(this).data("rno");
      
      replyService.get(rno, function(reply){
      
        modalInputReply.val(reply.reply);
        modalInputReplyer.val(reply.replyer);
        modalInputReplyDate.val(replyService.displayTime(reply.replyDate))
        .attr("readonly","readonly");
        modal.data("rno", reply.rno);
        
        modal.find("button[id !='modalCloseBtn']").hide();
        modalModBtn.show();
        modalRemoveBtn.show();
        
        $(".modal").modal("show");
            
      });
      
    });
  
	modalModBtn.on("click", function(e){
		
		var reply = {rno:modal.data("rno"), reply: modalInputReply.val()};
		
		replyService.update(reply, function(result) {
			
			alert(result);
			modal.modal("hide");
			showList(1);
			
		});
	});
})
</script>


<%@include file="../includes/footer.jsp"%>
