<%
String view = request.getParameter("view");
if (view.startsWith("admin/")) {
	pageContext.forward("admin.jsp");
} else {
	pageContext.forward("user.jsp");
}
%>