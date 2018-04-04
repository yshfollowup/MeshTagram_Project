<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color: #fafafa;">
	<div style="height: 70px;"></div>
	<div style="display: inline-block;" align="center" >
		<h2>이 달의 통계 자료</h2>
		<small>MeshTagram의 소중한 자료를 토대로 선정된 이 달의 통계 자료입니다!</small><br/>
		<small style="color:green;">이미지를 클릭하면 크게 보실 수 있습니다</small>
		<hr/>
		<c:forEach items="${statImage }" var="obj" varStatus="i">
			<div style="margin-top: 20px; float: left; width: 33%; ">
				<button  class="_q8y0e coreSpriteMobileNavSettings _8scx2"
					data-toggle="modal" data-target="#myModal">
					<img id="img${i }" class="imgs" src="/images/statImage/${obj.name }" style="width: 300px; height: 250px;"/></button>
				<div id="title">${obj.title }</div>		
			</div>
		</c:forEach>
	</div>
</body>
</html>

<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="_pfyik" role="dialog">
			<div class="_23gmb"></div>
			<div class="_o0j5z">
				<div class="_784q7">
					<img class="modal-content" id="img01">
					<div id="caption"></div>
				</div>
			</div>
			<button class="_dcj9f" data-dismiss="modal">&times;</button>
		</div>
	</div>
	
<script>
	var modal = document.getElementById('myModal');
	var img = document.getElementsByClassName('imgs');
	var modalImg = document.getElementById("img01");
	var captionText = document.getElementById("caption");
	
	$("#img")
	img.onclick = function() {
		modal.style.display = "block";
		modalImg.src = this.src;
		captionText.innerHTML = $("#title");
	}
	
	var span = document.getElementsByClassName("close")[0];
	span.onclick = function() {
		modal.style.display = "none";
	}
</script>
