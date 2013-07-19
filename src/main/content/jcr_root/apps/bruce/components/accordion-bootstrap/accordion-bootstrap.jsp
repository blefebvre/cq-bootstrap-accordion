<%--
	brucelefebvre.com - July 2013
--%><%
%><%@page session="false"
		import="com.day.cq.wcm.api.WCMMode" %><%
%><%@include file="/libs/foundation/global.jsp" %>
<cq:includeClientLib categories="com.brucelefebvre.accordion"/>
<%
	int numberOfItems = Integer.parseInt(properties.get("numItems", "3"));
	String componentPath = componentContext.getResource().getPath();
	String id = "ac_" + componentPath.substring(componentPath.lastIndexOf("/") + 1);
	String[] sectionTitles = properties.get("sectionTitles", new String[0]);

	boolean editMode = (WCMMode.fromRequest(request) == WCMMode.EDIT);
%>

<div class="accordion" id="<%= xssAPI.encodeForHTMLAttr(id) %>">
	<%
		for (int i = 0; i < numberOfItems; i++) {
	%>
	<div class="accordion-group">
		<div class="accordion-heading">
			<a class="accordion-toggle" data-toggle="collapse" data-parent="#<%= xssAPI.encodeForHTMLAttr(id) %>" href="#collapse<%= i %>">
			<%= (sectionTitles.length > i) ? xssAPI.encodeForHTML(sectionTitles[i]) : "Section #" + (i + 1) %>
			</a>
		</div>
		<div id="collapse<%= i %>" class="accordion-body collapse <%= (editMode || i == 0) ? "in" : "" %>">
			<div class="accordion-inner">
				<cq:include path="<%= "accordion-par-" + i %>" resourceType="foundation/components/parsys" />
			</div>
		</div>
	</div>
	<%
		}
	%>
</div>