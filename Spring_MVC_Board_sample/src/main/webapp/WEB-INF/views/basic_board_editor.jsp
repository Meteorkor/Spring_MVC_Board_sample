<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>Basic_Board_List</title>

<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>

<style>
table.tbl_editor {
	border-spacing: 0;
	border-collapse: collapse;
	width: 702px;
	margin-bottom: 3px;
}

table.tbl_editor th.title_col {
	/* 
	background-color: #428BCA;
	color: white;
	color: #2D2F30;
	color: #666666;
	text-align: center;
	
	 */
	padding: 4px;
	font-size: 13px;
}

table.tbl_editor th {
	border-top: 2px solid #D6BBBB;
	border-bottom: 2px solid #D6BBBB;
}

table.tbl_editor thead {
	font-weight: normal;
	font-size: 12px;
	color: #666666;
	font-size: 12px;
	/* 
	border-top: 1px solid #D6BBBB;
	border-bottom: 1px solid #D6BBBB;
	 */
}

table.tbl_editor td {
	/* 
	border: 1px solid #A9A9A9;
	padding: 4px;
	 */
	
}

table.tbl_editor div.content {
	min-height: 200px;
	word-break: break-all;
	background-color: #E5E5E5;
	font-size: 12px;
}

div.cmt_area {
	width: 700px;
	/* 
	border: 1px solid #A9A9A9;
	 */
	border-radius: 5px;
	font-size: 13px;
	color: #666666;
	margin-bottom: 3px;
}

div.cmt_status {
	background-color: #CFE2F3;
	color: #666666;
	border: 1px solid #B9D0E5;
}

div.cmt_writor,div.cmt_writed_date,div.cmt_icon {
	display: inline-block;
	padding: 4px;
}

div.cmt_icon {
	float: right;
	min-width: 100px;
}

div.cmt_content {
	border: 1px solid #B9D0E5;
	padding: 4px;
}

div.cmt_writor,div.cmt_content {
	
}

div.cmt_writor {
	/* 
	text-align: center;
	 */
	
	min-width: 100px;
}
</style>

</head>
<body>

	<table class='tbl_editor'>
		<colgroup>
			<col width="75">
			<col width="145">
			<col width="75">
			<col width="145">
			<col width="75">
			<col width="145">
		</colgroup>
		<thead>
			<tr style='background-color: #EEE3E3;'>
				<th class='title_col'>제목</th>
				<th colspan='5' style='text-align: left;'>테스트 제목</th>
			</tr>
			<tr>
				<th class='title_col'>이름</th>
				<th style='text-align: left;'>홍길동</th>
				<th class='title_col'>날짜</th>
				<th>2014-05-05 11:11</th>
				<th class='title_col'>조회수</th>
				<th>15122</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td colspan='6'>
					<div class='content' contenteditable='true'></div>
				</td>
			</tr>
		</tbody>
	</table>

	<div class='cmt_area'>
		<div class='cmt_status'>
			<div class='cmt_writor'>이름</div>
			<div class='cmt_writed_date'>날짜</div>
			<div class='cmt_icon'>아이콘</div>
		</div>
		<div class='cmt_content' contenteditable='true'>내용</div>
	</div>
	<!--  -->
	<div class='cmt_area'>
		<div class='cmt_status'>
			<div class='cmt_writor'>홍길동</div>
			<div class='cmt_writed_date'>2014-01-01 11:22</div>
			<div class='cmt_icon'>☆○♤</div>
		</div>
		<div class='cmt_content' contenteditable='true'>내용</div>
	</div>

</body>
</html>
