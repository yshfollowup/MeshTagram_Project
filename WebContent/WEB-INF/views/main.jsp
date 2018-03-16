<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



<div align="center" style="min-height: 590px;">
		<c:forEach var="obj" items="${allPost}">
		<p style="float: left; width: 33%;">
				<small><c:forEach items="${obj.tags }" var="tag">
						<a href="/account/search.do?tag=${fn:replace(tag,'#','%23') }">${tag }</a>
				</c:forEach> </small> <br /> 
				<img src="${applicationScope.path }${i.image}"
					style="width: 230px; height: 230px;" onclick="openDialog('${i._id}')" />
			</p>
		</c:forEach>
	</div>