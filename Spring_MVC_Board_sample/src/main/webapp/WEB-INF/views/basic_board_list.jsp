<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Basic_Board_List</title>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<style>
table.basic_bod_tb {
	border-spacing: 0;
	border-collapse: collapse;
	/* 
	width: 100%;
	 */
	 width : 700px;
}

table.basic_bod_tb th {
	border-top: 1px solid #A9A9A9;
	border-bottom: 1px solid #A9A9A9;
	padding: 10px;
}

table.basic_bod_tb tbody td {
	padding: 10px;
	text-align: center;
}

table.basic_bod_tb tbody tr.odd {
	
}

table.basic_bod_tb tr.even {
	background-color: #CFE2F3;
}

ul.pa_nate {
	padding: 0px;
	text-align: center;
}

ul.pa_nate a {
	font-size: 12px;
	text-decoration: none;
}

ul.pa_nate a:hover {
	color: red;
}

ul.pa_nate li {
	display: inline;
}
</style>
</head>
<body>
	<script type="text/javascript">
		$(document).ready(function() {
			$('table.basic_bod_tb tbody tr:odd').addClass('odd');
			$('table.basic_bod_tb tbody tr:even').addClass('even');
		});
	</script>


	<table class='basic_bod_tb'>
		<thead>
			<tr>
				<th>#</th>
				<th>제목</th>
				<th>등록자</th>
				<th>등록일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${ (blst!=null)&&(blst.size()>0) }">
				<c:forEach var="index" begin="0" end="${blst.size()-1}" step="1">
					<tr>
						<td>${blst.get(index).getB_id()}</td>
						<td><a href="<c:url value="${blst.get(index).getRowNo()}"/>"><span>${blst.get(index).getB_title()}</span></a></td>
						<td>${blst.get(index).getB_writor()}</td>
						<td>${blst.get(index).getB_writed_date()}</td>
						<td>${blst.get(index).getB_v_ctn()}</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
		<tfoot>
			<tr>
				<td colspan='5'><c:if test="${Pg_nate!=null}">
						<ul class='pa_nate'>
							<a href="<c:url value="1"/>"><li>첫페이지</li></a>
							<c:choose>
								<c:when test="${Pg_nate.getNow_page()<2}">
									<a href="<c:url value="1"/>"><li>◁</li></a>
								</c:when>
								<c:otherwise>
									<a href="<c:url value="${Pg_nate.getNow_page()-1}"/>"><li>◁</li></a>
								</c:otherwise>
							</c:choose>
							<c:forEach var="index" begin="1" end="${Pg_nate.getPageTotal()}"
								step="1">
								<a href='${index}'><li>${index}</li></a>
							</c:forEach>
							<c:choose>
								<c:when
									test="${Pg_nate.getNow_page() >= Pg_nate.getPageTotal() }">
									<a href="<c:url value="${Pg_nate.getNow_page()}"/>"><li>▷</li></a>
								</c:when>
								<c:otherwise>
									<a href="<c:url value="${Pg_nate.getNow_page()+1}"/>"><li>▷</li></a>
								</c:otherwise>
							</c:choose>
							<a href="<c:url value="${Pg_nate.getPageTotal()}"/>"><li>마지막페이지</li></a>
						</ul>
					</c:if></td>
			</tr>
		</tfoot>
	</table>

</body>
</html>
