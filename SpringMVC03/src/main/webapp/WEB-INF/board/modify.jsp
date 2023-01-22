<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css'>
<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js'></script>
<script type="text/javascript">
	$(document).ready(()=>{
		$("#list").click(()=>{
			location.href= "<c:url value='/list.do' />"
		});
		
		$("#remove").click(()=>{
			$("#formId").attr("action","<c:url value='/remove.do' />?bno=${board.idx}")
			$("#formId").submit();
			//location.href="<c:url value='/remove.do' />?bno=${board.idx}";
		});
	})
</script>

</head>
<body>
	<div class="container">
	  <h2>Board register</h2>
	  <div class="panel panel-default">
	    <div class="panel-heading">modify page</div>
	    <div class="panel-body">
	    	<form id="formId" action="<c:url value='/modify.do' />" method="post">
	    	   <div class="form-group">
			      <label for="idx">bno</label>
			      <input type="text" class="form-control" id="idx" value="${board.idx }" name="idx">
			    </div>
			    <div class="form-group">
			      <label for="title">title</label>
			      <input type="text" class="form-control" id="title" value="${board.title }" name="title">
			    </div>
			    <div class="form-group">
			      <label for="contents">contents:</label>
			      <textarea class="form-control" name="contents">${board.contents}</textarea>
			    </div>
		        <div class="form-group">
			      <label for="writer">writer</label>
			      <input type="text" class="form-control" id="writer" readonly="readonly" value="${board.writer }" >
			    </div>
			    <button type="submit" class="btn btn-default">수정</button>
			    <button id="remove" class="btn btn-default">삭제</button>
			     <button id="list" type="reset" class="btn btn-default">리스트</button>
			  </form>
	    </div>
	    <div class="panel-footer">인프런</div>
	  </div>
	</div>
</body>
</html>