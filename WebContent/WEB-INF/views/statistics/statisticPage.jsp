<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="robots" content="noimageindex, noarchive">
<meta name="mobile-web-app-capable" content="yes">
<meta name="theme-color" content="#000000">
<meta id="viewport" name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1, maximum-scale=1, viewport-fit=cover">


<style>
.imgs {
	border-radius: 5px;
	cursor: pointer;
	transition: 0.3s;
}

.imgs:hover {
	opacity: 0.3;
}

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
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.9); /* Black w/ opacity */
}

/* Modal Content (image) */
.modal-content {
	margin: 50px auto;
	display: block;
	width: 80%;
	max-width: 800px;
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

@
-webkit-keyframes zoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes zoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}
._o0j5z {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	min-height: 100%;
	overflow: auto;
	width: auto;
	z-index: 1
}

@media ( min-width :481px) {
	._o0j5z {
		padding: 0 40px;
		pointer-events: none;
		-webkit-transform: translate3d(0, 0, 0);
		transform: translate3d(0, 0, 0)
	}
	._o0j5z::after, ._o0j5z::before {
		content: '';
		display: block;
		-webkit-flex-basis: 40px;
		-ms-flex-preferred-size: 40px;
		flex-basis: 40px;
		-webkit-flex-shrink: 0;
		-ms-flex-negative: 0;
		flex-shrink: 0
	}
}

/* 100% Image Width on Smaller Screens */
@media only screen and (max-width: 700px) {
	.modal-content {
		width: 100%;
	}
}

._23gmb {
	bottom: 0;
	left: 0;
	pointer-events: none;
	position: fixed;
	right: 0;
	top: 0;
	z-index: 0
}

._23gmb * {
	pointer-events: auto
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
	z-index: 500;
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

.modal-backdrop.in {
	display : none;
}
</style>




</head>
<body style="background-color: #fafafa;">
	<div style="height: 70px;"></div>
	<div style="display: inline-block;" align="center">
		<h2>이 달의 통계 자료</h2>
		<small>MeshTagram의 소중한 자료를 토대로 선정된 이 달의 통계 자료입니다!</small><br /> <small
			style="color: green;">이미지를 클릭하면 크게 보실 수 있습니다</small>
		<hr />
		<c:forEach items="${statImage }" var="obj" varStatus="i">
			<div style="margin-top: 30px; float: left; width: 50%;" class="sss"
				src="/images/statImage/${obj.name }">
				<img id="img${i }" class="imgs" src="/images/statImage/${obj.name }"
					style="width: 90%; height: 50%;"
					class="_q8y0e coreSpriteMobileNavSettings _8scx2 static"
					data-toggle="modal" data-target="#myModal" />

				<div id="title">
					<b>${obj.title }</b>
				</div>
			</div>
		</c:forEach>
	</div>

	<!-- Modal -->
	<div id="myModal" class="modal fade" role="dialog">
		<div class="_pfyik" role="dialog">
			<div class="_23gmb"></div>
			<div class="_o0j5z">
				<div class="_784q7">
					<ul class="_cepxb" role="menu">
						<li class="_o2wxh"><img class="modal-content" src=""
							id="content" style="width: 100% px; height: 600px;" /></li>
					</ul>
				</div>
			</div>
			<button class="_dcj9f" data-dismiss="modal">&times;</button>
		</div>
	</div>
	<script>
		var modal = $('#myModal');
		var img = $('.imgs');
		var modalImg = $("#img01");
		var captionText = $("#caption");

		$(".static").on("click", function() {
			var src = $(this).attr("src");
			console.log("크게키워라" + src);
			$("#content").attr("src", src);
		});
		$(".sss").on("click", function() {
			var src = $(this).attr("src");
			console.log("크게키워라" + src);
			$("#content").attr("src", src);
		});

		var span = $(".close")[0];
	</script>
</body>
</html>
