<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="/js/custom.js"></script>
<title>MeshTagram</title>
</head>
<body>
	<div align="center" >
		<div>
			<c:forEach items="${allMessage }" var="dm">
				<div align="center">
					<span>${dm.content }</span>
				</div>
			</c:forEach>
		</div>
		<div>
			<input type="text" id="dmtxt_${obj._Id }" 
					name="${obj.id }" style="font-family: 맑은고딕" placeholder="메시지를 입력하세요" >
			<button type="button" id="sendbt">전송</button>
			<a href="javascript:" class="KRtoEn"><img src="한/영전환"/></a>
			<a href="javascript:" class="upload"><img src="사진 첨부"/></a>
			<a href="javascript:" class="like"><img src="좋아요"/></a>
		</div> 
	</div>
</body>
<script>
	var content;
	
	$("#sendbt").on("click", function() {
		$.ajax("/insert.do", {
			"method" : "get",
			"async" : true,
			"data" : {
				"content" : content
			}
		}).done(function(val) {
			
		})		
	});
</script>
</html>