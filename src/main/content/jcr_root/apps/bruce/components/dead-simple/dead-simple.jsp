<%--
	brucelefebvre.com - May 2013
--%><%
%><%@include file="/libs/foundation/global.jsp" %><%
%><%@page session="false" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title></title>
		<meta name="description" content="">
		<meta name="viewport" content="width=device-width">
		<% currentDesign.writeCssIncludes(pageContext); %>
		<cq:include script="/libs/wcm/core/components/init/init.jsp"/>
		<cq:include script="/libs/foundation/components/page/stats.jsp"/>
	</head>
	<body>
		<cq:include path="the-parsys" resourceType="foundation/components/parsys" />
	</body>
</html>
