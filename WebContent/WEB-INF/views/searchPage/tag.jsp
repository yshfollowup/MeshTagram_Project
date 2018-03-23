<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
	<div class="title" align="center" style="height: 150px; font-size: 80px" >
		${title}
	<div align="center">
	<small>
		${count }
	</small>
	</div>
	</div>
	<div align="left" style="min-height: 80px;"></div>
<div align="left" style="min-height: 80px;">게시물</div>
<div align="center" >
		<c:forEach var="obj" items="${tagList}">
		<p style="float: left; width: 33%;">
				<small><c:forEach items="${obj.tags }" var="tag">
						<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach> </small> <br />
				<a href=""${applictionScope.path}/detail/detail.do?boardid=${obj._id }"" data-toggle="tooltip" title="실험 ${fn:length(following)}개"> 
				<img src="${obj.path }${obj.image}"
					style="width: 230px; height: 230px;" class="image"/>
				</a>
			</p>
		</c:forEach>
	</div>
	
	
<script>
	//종하요 댓글 개수 구하기
	$(document).ready(function(){
	    $('[data-toggle="tooltip"]').tooltip();   
	});

</script>