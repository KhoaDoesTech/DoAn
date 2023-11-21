<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/layouts/user/taglib.jsp"%>
<head>
<title>Đăng ký tài khoản</title>
</head>
<body>
	<div class="row">
		<div id="sidebar"></div>
		<div class="span12">
			<ul class="breadcrumb">
				<li><a href="<c:url value="/"/>">Trang chủ</a> <span class="divider">/</span></li>
				<li class="active">Người dùng</li>
			</ul>

			<h6>Người dùng</h6>
			<hr class="soft" />

			<div class="row">
				<div class="span4">
					<div class="well">
						<h5>Đăng ký tài khoản</h5>
						<br /> <br />
						<form:form action="dang-ky" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input type="email" class="span3"
										placeholder="Mời nhập email" path="email" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputPass">Mật khẩu</label>
								<div class="controls">
									<form:input type="password" class="span3"
										placeholder=" Mời nhập mật khẩu" path="password" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputName">Họ và tên</label>
								<div class="controls">
									<form:input type="text" class="span3"
										placeholder=" Mời nhập họ và tên " path="display_name" />
								</div>
							</div>

							<div class="control-group">
								<label class="control-label" for="inputAddr">Địa chỉ</label>
								<div class="controls">
									<form:input type="text" class="span3"
										placeholder=" Mời nhập địa chỉ" path="address" />
								</div>
							</div>
							<br />
							<div class="controls">
								<button type="submit" class="defaultBtn">Đăng ký thành
									viên</button>
							</div>

						</form:form>
					</div>
				</div>
				<div class="span1">&nbsp;</div>
				<div class="span4">
					<div class="well">
						<h5>Đăng nhập hệ thống</h5>
						<br /> <br />
						<c:if test="${ statusLogin }">
							<h1>${statusLogin}</h1>
						</c:if>
						<form:form action="dang-nhap" method="POST" modelAttribute="user">
							<div class="control-group">
								<label class="control-label" for="inputEmail">Email</label>
								<div class="controls">
									<form:input type="email" class="span3"
										placeholder=" Mời nhập email" path="email" />
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="inputPassword">Mật
									khẩu </label>
								<div class="controls">
									<form:input type="password" class="span3"
										placeholder=" Mời nhập mật khẩu" path="password" />
								</div>
							</div>
							<br />
							<div class="control-group">
								<div class="controls">
									<button type="submit" class="defaultBtn">Đăng nhập</button>
									<a href="#">Quên mật khẩu ?</a>
								</div>
							</div>
						</form:form>
					</div>
				</div>
			</div>

		</div>
	</div>

</body>
