<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div style="height:70px;"></div>


<div style="clear:both;"></div>	
<div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-2 sidenav">
    </div>
    <div class="col-sm-8 text-left"> 
	  <c:forEach var="obj" items="${allPost}">
		<div align="center" style="min-height: 590px;">
		  <section style="float: center; width: 70%;">
		  	<div>
		  	<c:choose>
		  		<c:when test="${empty obj.profile}">
		  			<img src="/images/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="writer">
		  		</c:when>
		  		<c:otherwise>
				  	<img src="${applicationScope.path }${obj.profile}" style="width: 30px; height: 30px; border-radius: 30px" id="writer">
		  		</c:otherwise>
		  	</c:choose>
		  	<a href="/mypage/index.do?id=${obj.id }">${obj.id }</a>
		  	</div>
			<div>
			<img src="${obj.path }${obj.image}"
					style="width: 641px; height: 641px;"  />
			</div>
			<div>
			<div>
			<button type="button">좋아요</button><button type="button">댓글달기</button>
			</div>
			 <a href="/mypage/index.do?id=${obj.id }">${obj.id }</a>${obj.comment }
				<c:forEach items="${obj.tags }" var="tag">
				<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach> 
			<hr/>
			<div>
				<textarea class="_bilrf" aria-label="댓글쓰기" id="reply" style="resize: none; width: 100%; padding: 2px; font-family: 맑은고딕" placeholder="댓글쓰기"></textarea>
			</div>
		</div>
		</section>
	</div>
	
	</c:forEach>
  </div>
    <div class="col-sm-2 sidenav">
      <div class="well">
      <a href="/mypage/index.do?id=${aDTO.id }">
      <c:choose>
      <c:when test="${empty aDTO.profile }">
     	<img src="/image/insta.jpg" style="width: 30px; height: 30px; border-radius: 30px" id="profile">
      </c:when>
      <c:otherwise>
      <img src="${obj.path }${obj.image}"
					style="width: 30px; height: 30px;" id="profile"/>
      </c:otherwise>
      </c:choose>
        ${aDTO.id }</a>
      </div>
      <div class="well">
        <p>스토리</p>
        <p>회원님이 팔로우하는 사람들의 스토리가 여기에 표시됩니다.
        </p>
      </div>
      <div class="well">
        <div>@copyright</div>
        </div>
    </div>
  </div>
</div>

