<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<%@include file="../include/header.jsp"%>
 	<script>
				
$(document).ready(function(){
	
	var formObj = $("form[role='form']");
	
	console.log(formObj);
	
	$(".btn-warning").on("click", function(){
		formObj.attr("action", "/health/board/modify");
		formObj.attr("method", "get");		
		formObj.submit();
	});
	
	$(".btn-danger").on("click", function(){
		formObj.attr("action", "/health/board/remove");
		formObj.submit();
	});
	
	$(".btn-primary").on("click", function(){
		self.location = "/health/board/listAll";
	});
	
});

</script>
  <div class="main">
  
<form role="form" method="post">
	<input type='hidden' name='bno' value="${boardVO.bno}">
</form>
	<h1>상세 내용</h1>
	<h2>제목<input type="text" name='title'  style="width:100%" value="${boardVO.title}"	readonly="readonly"></h2>
	
	<h2>내용<textarea  style="width:100%" name="content" rows="3" readonly="readonly">${boardVO.content}</textarea>	</h2>
	
	<h2>작성자<input type="text" name="writer" style="width:100%" value="${boardVO.writer}" readonly="readonly"></h2>

<!-- /.box-body -->
<div class="box-footer">
	<button type="submit" class="btn btn-warning">수정</button>
	<button type="submit" class="btn btn-danger">삭제</button>
	<button type="submit" class="btn btn-primary">목록</button>
</div>

</div>
		
<%@include file="../include/footer.jsp"%>