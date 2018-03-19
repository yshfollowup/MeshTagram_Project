<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

${sDTO.id}<button type="button" id="follow">팔로우</button> 
<button type="button"><div class="_6rswy"><div class="_quyb3 coreSpriteDropdownArrowGrey9"></div>::after</div></select>
게시물 ${fn:length(sPost)} 팔로워 ${fn:length(sFollow)} 팔로우${fn:length(sfollowing)}
<div>${sDTO.intro }</div>

<div align="center" style="min-height: 590px;">
		<c:forEach var="obj" items="${sPost}">
		<p style="float: left; width: 33%;">
				<small><c:forEach items="${obj.tags }" var="tag">
						<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach> </small> <br /> 
				<div class="mouseIn">
				<img src="${obj.path }${obj.image}"
					style="width: 230px; height: 230px;" onclick="openDialog('${obj._id}')" class="image"/>
					<span class="In"></span>
				</div>
			</p>
		</c:forEach>
	</div>
	
	
<script>
	$(".image").mouseenter(function(){
		$(".in",this).html("<button>${fn:length(sPost.like)}</button><button>${fn:length(sPost.reply)}</button>");
	}).mouseout(function(){
		$(".in",this).html("");
	});

</script>