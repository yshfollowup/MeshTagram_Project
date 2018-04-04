<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MeshTagram</title>


<style type="text/css" data-isostyle-id="is6bdb5498">

.imgs {
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

.imgs:hover {opacity: 0.3;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
}

/* Caption of Modal Image */
#caption {
    margin: auto;
    display: block;
    width: 80%;
    max-width: 700px;
    text-align: center;
    color: #ccc;
    padding: 10px 0;
    height: 150px;
}

/* Add Animation */
.modal-content, #caption {    
    -webkit-animation-name: zoom;
    -webkit-animation-duration: 0.6s;
    animation-name: zoom;
    animation-duration: 0.6s;
}

@-webkit-keyframes zoom {
    from {-webkit-transform:scale(0)} 
    to {-webkit-transform:scale(1)}
}

@keyframes zoom {
    from {transform:scale(0)} 
    to {transform:scale(1)}
}


/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px){
    .modal-content {
        width: 100%;
    }
}

._pfyik {
	background-color: rgba(0, 0, 0, .5);
	bottom: 0;
	-webkit-box-pack: justify;
	-webkit-justify-content: space-between;
	-ms-flex-pack: justify;
	justify-content: space-between;
	left: 0;
	overflow-y: auto;
	-webkit-overflow-scrolling: touch;
	position: fixed;
	right: 0;
	top: 0;
	z-index: 1
}

._dcj9f {
	background: 0 0;
	border: 0;
	cursor: pointer;
	height: 36px;
	outline: 0;
	overflow: hidden;
	position: absolute;
	right: 0;
	top: 0;
	z-index: 2
}

._dcj9f::before {
	color: #fff;
	content: '\00D7';
	display: block;
	font-size: 36px;
	font-weight: 600;
	line-height: 36px;
	padding: 0;
	margin: 0
}
	
._784q7 {
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	margin: auto;
	max-width: 935px;
	pointer-events: auto;
	width: 100%
}

</style>




</head>
<body style="background-color: #fafafa;">
	<div style="height: 70px;"></div>
	<div style="display: inline-block;" align="center" >
		<h2>이 달의 통계 자료</h2>
		<small>MeshTagram의 소중한 자료를 토대로 선정된 이 달의 통계 자료입니다!</small><br/>
		<small style="color:green;">이미지를 클릭하면 크게 보실 수 있습니다</small>
		<hr/>
		<c:forEach items="${statImage }" var="obj" varStatus="status">
			<div style="margin-top: 20px; float: left; width: 33%; ">
				<button id="zoomBt" data-toggle="modal" data-target="#myModal">
					<img id="img${status.count }" class="imgs" alt="${obj.title }" src="/images/statImage/${obj.name }" style="width: 300px; height: 250px;"/></button>
				<div id="title">${obj.title }</div>		
			</div>
		</c:forEach>
	</div>
</body>
</html>

<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="_pfyik" role="dialog">
			<div class="_784q7">
				<img class="modal-content" id="content">
				<div id="caption"></div>
			</div>
			<button class="_dcj9f" data-dismiss="modal">&times;</button>
		</div>
	</div>
	
<script>
	
	var modal = document.getElementById('myModal');

	//Get the image and insert it inside the modal - use its "alt" text as a caption
	//var img = document.getElementById('myImg');
	var modalImg = document.getElementById("content");
	var captionText = document.getElementById("caption");
	$("body").on("click", "[id^=img]", function() {
		var uId = this.id;
		modal.style.display = "block";
		modalImg.src = uId.src;
		captionText.innerHTML = uId.alt;
	});
	
	//Get the <span> element that closes the modal
	var span = document.getElementsByClassName("_dcj9f")[0];
	
	//When the user clicks on <span> (x), close the modal
	span.onclick = function() { 
		modal.style.display = "none";
	}
	
</script>
