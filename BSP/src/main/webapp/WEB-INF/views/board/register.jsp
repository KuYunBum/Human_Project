<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>
<%@include file="../include/header.jsp"%>

<script>
$(document).ready(function() {
	
	var formObj = $("form[role='form']");
	console.log(formObj);

	$(".btn-primary").on("click", function() {
		formObj.submit();
	});
	
	$(".btn-warning").on("click", function() {
		self.location = "/health/board/listAll";
	});

});
</script>

<div class="main">
	<div class="box-header">
		<h1 class="box-title">글쓰기</h1>
	</div>
	<!-- /.box-header -->
	<!-- action에 경로가 없으면 현재 페이지 주소로 이동한다.-->
	<form role="form" method="post">

		<h3>제목<input type="text" name='title' placeholder="Enter Title" style="width: 100%"></h3>
		<h2>내용<textarea name="content" rows="8" style="width: 100%" placeholder="Enter ..."></textarea></h2>
		<h2>작성자<input type="text" name="writer" placeholder="Enter Writer"	style="width: 100%"></h2>

	</form>
		<!-- /.box-body -->
	<div class="box-footer">
			<button type="submit" class="btn-primary">저장</button>
			<button type="submit" class="btn-warning">목록</button>
	</div>

</div>

<%@include file="../include/footer.jsp"%>