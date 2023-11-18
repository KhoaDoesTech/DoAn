<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Thanh toán</title>
</head>
<body>
	<div class="row">
		<div id="sidebar" class="span2">
		</div>
		<div class="span9">
			<ul class="breadcrumb">
				<li><a href="index.html">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>

			<h3>Người dùng</h3>
			<hr class="soft" />

			<div class="row">
				<div class="span8">
					<div class="well">
						<br /> <br />
						<form:form action="checkout" method="POST" modelAttribute="bills" class="form-horizontal">
							<h3>Thanh toán đơn hàng </h3>
							<div class="control-group">
								<label class="control-label">Họ tên <sup>*</sup></label>
								<div class="controls">
									<form:input type="text"  placeholder=" Mời nhập họ và tên "  path="display_name" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Email <sup>*</sup></label>
								<div class="controls">
									<form:input type="email"  placeholder="Mời nhập email"  path="user" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Liên hệ <sup>*</sup></label>
								<div class="controls">
									<form:input type="text"  placeholder="Mời nhập số điện thoại"  path="phone" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Địa chỉ <sup>*</sup></label>
								<div class="controls">
								<form:textarea path="address" rows="5" cols="30" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Ghi chú <sup>*</sup></label>
								<div class="controls">
								<form:textarea path="note" rows="5" cols="30" />
								</div>
							</div>
							<div class="control-group">
								<div class="controls">
									<input type="submit" name="submitAccount" value="Thanh toán"
										class="shopBtn exclusive">
								</div>
							</div>
						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
					
			</div>

		</div>
	</div>

</body>