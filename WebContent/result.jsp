<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.edu.realestate.model.*"%>
<%@ page import="java.util.*"%>
<%@ page import="com.edu.realestate.services.*"%>
<%@ page import="com.edu.realestate.exceptions.RealEstateException"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!String cid;%>
	<%-- START --%>
	<%
		List<Advertisement> listAds = new ArrayList<>();
		try {
			cid = request.getParameter("cityId");
			ReferenceService service = new ReferenceServiceImpl();
			Integer id = Integer.parseInt(cid);
			SearchCriteria sc = new SearchCriteria();
			sc.setCityId(id);
			listAds = service.findAdsByCriteria(sc);
		} catch (Exception ex) {
		}
	%>
	<h1>Advertisement</h1>
	<ul>

		<% for (Advertisement adv : listAds) { %>
		<li>
			<div>
				<span><%=adv.getTitle()%></span>
				<div><%=adv.getDescription()%></div>
			</div>
		</li>

		<%
			}
		%>
	</ul>
	<%-- END --%>
</body>
</html>