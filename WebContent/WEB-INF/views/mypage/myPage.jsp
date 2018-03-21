<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<div style="height:70px;"></div>
<span id="all-screen" aria-hidden="true">
<div>
	<img src="/images/insta.jpg" style="width: 300px; height: 300px; border-radius: 30px" id="preview">${aDTO.id } 
	<button type="button" onclick="location.href='/mypage/edit.do'">프로필 편집</button>
	<!-- Trigger the modal with a button -->
	<button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">설정</button><br/>
	게시물${fn:length(myPost) } <a href="follower.do" id="follower">팔로워${fn:length(follower) }</span>  <a href="following.do" id="following">팔로우${fn:length(following) }</span></br>
</div>

<div>
	<c:forEach var="obj" items="${myPost }">
		<!-- <img src="${applicationScope.Path }${obj.image}" style="width: 300px; height: 300px; border-radius: 30px" id="preview">	 -->	
	</c:forEach>
</div>
</span>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <button class="_h74gn"><h5 class="modal-title">프로필 변경</h5></button>
      </div>
      <div class="modal-body">
        <button class="_h74gn"><p>비밀번호 변경</p></button>
      </div>
      <div class="modal-body">
      	<button class="_h74gn">댓글관리</button>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
      </div>
    </div>

  </div>
</div>
<script>
	$("#follower").on("change",function(){
		$("all-screen").attr("aria-hidden",false)
	});
	
	$("#following").on("change",function(){
		$("all-screen").attr("aria-hidden",false)
	});
</script>

