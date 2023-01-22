<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	$(document).ready(()=> {
  		$("#list").click(()=>{
  			location.href="<c:url value='/list.do' />"
  		});
  		
  		$("#modify").click(()=>{
  			//location.href = "<c:url value='/modify.do' />?bno="+$("#idx").val();
  			location.href = "<c:url value='/modify.do' />?bno=${board.idx}";
  			
  		})
  		
  	})
  
  </script>
</head>
<body>
 
<div class="container">
	  <h2>Panel Footer</h2>
	  <div class="panel panel-default">
	    <div class="panel-heading">Board info</div>
	    <div class="panel-body">
	    	<div class="form-group">
		      <label for="title">bno</label>
		      <input type="text" class="form-control" id="idx" value="${board.idx}" name="idx" readonly="readonly">
		    </div>
	    	<div class="form-group">
		      <label for="title">title</label>
		      <input type="text" class="form-control" id="title" value="${board.title}" name="title" readonly="readonly">
		    </div>
		    <div class="form-group">
		      <label for="contents">contents:</label>
		      <textarea class="form-control" name="contents"  readonly="readonly">${board.contents}</textarea>
		    </div>
	        <div class="form-group">
		      <label for="writer">writer</label>
		      <input type="text" class="form-control" id="writer" readonly="readonly" name="writer" value="${board.writer }">
		    </div>
		    <button class="btn btn-default" id="modify">Modify</button>
		    <button class="btn btn-info" id="list">List</button>
	    </div>
	    <div class="panel-footer">인프런 화이팅</div>
	  </div>
	</div>
</body>
</html>