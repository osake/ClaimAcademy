<%@page language="java" contentType="text/html"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.claim.bookstore.model.Book"%>
<%@page import="com.claim.bookstore.model.Category"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	String param1 = application.getInitParameter("param1");
%>

<link rel="stylesheet" href="css/bookstore.css" type="text/css" />
<script src="js/bookstore.js" type="text/javascript"></script>
<script type="text/javascript" src="js/jquery-1.9.1.js"></script>
</head>
<div class="leftbar">
	<ul id="menu">
		<li><div>
				<a class="link1" href="<%=param1%>"> <span class="label"
					style="margin-left: 15px;">Home</span>
				</a>
			</div></li>
		<li><div>				
				<a class="link1" href="allBooks.html"><span
					style="margin-left: 15px;" class="label">All Books</span></a>
			</div></li>
				<li><div>
				<span class="label" style="margin-left: 15px;">Categories</span>
			</div>
			<ul>
						<c:forEach items="${catList}" var="category">
			
				<li><a class="label"
					href="<%=param1%>?action=category&categoryId=${category.id}&category=${category.categoryDescription}"><span
						class="label" style="margin-left: 30px;">${category.categoryDescription}</span></a>
				</li>
					</c:forEach>
			
			</ul>
		
			</li>
		<li><div>
				<span class="label" style="margin-left: 15px;">Contact Us</span>

			</div></li>
	</ul>
	<form class="search">
		<input type="hidden" name="action" value="search" /> <input id="text"
			type="text" name="keyWord" size="12" /> <span
			class="tooltip_message">?</span>
		<p />
		<input id="submit" type="submit" value="Search" />
	</form>


</div>






