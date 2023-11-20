<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<meta charset="UTF-8">
<title>Chi tiết sản phẩm</title>
<style>
.product-content {
	overflow-x: hidden;
}
</style>
</head>
<body>
	<!-- 
Body Section 
-->
	<div class="row product-content">
		<div id="sidebar"></div>
		<div class="span12">
			<ul class="breadcrumb">
				<li><a href="<c:url value="/"/>">Trang chủ</a> <span class="divider">/</span></li>
				<li><a href="#">Sản phẩm</a> <span class="divider">/</span></li>
				<li class="active">Chi tiết sản phẩm</li>
			</ul>
			<div class="well well-small">
				<div class="row-fluid">
					<div class="span5">
						<div id="myCarousel" class="carousel slide cntr">
							<div class="carousel-inner">
								<div class="item active">
									<a href="#"> <img
										src="<c:url value="/assets/user/img/${ product.img }"/>"
										alt="" style="width: 100%"></a>
								</div>
							</div>
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev">‹</a> <a class="right carousel-control"
								href="#myCarousel" data-slide="next">›</a>
						</div>
					</div>
					<div class="span7">
						<h3>${ product.name }</h3>
						<hr class="soft" />

						<form class="form-horizontal qtyFrm">
							<div class="control-group">
								<label class="control-label"><span>Giá thành</span></label>
								<label class="controls"><span><fmt:formatNumber
											type="number" groupingUsed="true" value="${ product.price }" />₫</span></label>

							</div>

							<div class="control-group">
								<label class="control-label"><span>Số lượng</span></label>
								<div class="controls">
									<input type="number" min="0" value="0" class="span8">
								</div>
							</div>
							<h4>Mô tả</h4>
							<p>${ product.title }
							<p>
								<a class="shopBtn" href="<c:url value="/AddCart/${ product.id_product }"/>" title="add to cart"> Add to cart </a>
						</form>
					</div>
				</div>
				<hr class="softn clr" />


				<ul id="productDetail" class="nav nav-tabs">
					<li class="active"><a href="#home" data-toggle="tab">Chi
							tiết sản phẩm</a></li>
					<li class=""><a href="#profile" data-toggle="tab">Sản phẩm
							liên quan </a></li>
				</ul>
				<div id="myTabContent" class="tab-content tabWrapper">
					<div class="tab-pane fade active in" id="home">${ product.details }
					</div>
					<div class="tab-pane fade" id="profile">

						<c:set var="countList" value="${ productByIDCategory.size() }" />
						<c:if test="${ productByIDCategory.size() > 6 }">
							<c:set var="countList" value="6" />
						</c:if>

						<c:forEach var="item" items="${ productByIDCategory }" begin="1"
							end="${ countList }" varStatus="loop">
							<div class="row-fluid">
								<div class="span2">
									<img src="<c:url value="/assets/user/img/${ item.img }"/>"
										alt="">
								</div>
								<div class="span6">
									<h5>${ item.name }</h5>
									<p>${ item.title }</p>
								</div>
								<div class="span4 alignR">
									<form class="form-horizontal qtyFrm">
										<h3>
											<fmt:formatNumber type="number" groupingUsed="true"
												value="${ product.price }" />
											₫
										</h3>
										<div class="btn-group">
											<a href="<c:url value="/AddCart/${ item.id_product }"/>" class="defaultBtn"><span
												class=" icon-shopping-cart"></span> Add to cart</a> <a href="<c:url value="/chi-tiet-san-pham/${ item.id_product }"/>" class="shopBtn">VIEW</a>
										</div>
									</form>
								</div>
							</div>
							<hr class="soft" />
						</c:forEach>

					</div>

				</div>

			</div>
		</div>
	</div>
	<!-- Body wrapper -->
</body>