	<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
List<String> inputList = (List<String>) session.getAttribute("afterInputList");
String field = (String) session.getAttribute("field");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>単語入力確認</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
</head>
<body>
	<div class="container">
		<form action="/Word/ConfirmServlet" method="post">
			<input type="hidden" name="field" value="<%=field%>"> 
			<h2>分野：<%=field%></h2>
			<table class="table table-light" border="1" id="wordTable">
				<tbody>
					<tr>
						<th scope="col" class="table-secondary">入力された単語</th>
						<th scope="col" class="table-secondary">行追加</th>
						<th scope="col" class="table-secondary">行削除</th>
					</tr>

					<%
					for (int i = 0; i < inputList.size(); i++) {
					%>

					<tr>
						<td><input class="form-control" type="text" name="text"
							value=<%=inputList.get(i)%> style="width: 100%;"></td>
						<td><input class="btn btn-outline-primary" type="button" value="行を追加" onclick="addRow(this)"></td>
						<td><input class="btn btn-outline-danger" type="button" value="行を削除"
							onclick="deleteRow(this)"></td>
					</tr>
					<%
					}
					%>
				</tbody>
			</table>
			<input class="col-12 btn btn-primary mb-4" type="submit" value="送信する">
		</form>
	</div>
	<script>
		function addRow(button) {
			var table = document.getElementById("wordTable");
			var rowIndex = button.parentNode.parentNode.rowIndex; // クリックされたボタンの親行のインデックスを取得
			var newRow = table.insertRow(rowIndex + 1); // 新しい行をクリックされたボタンの下に追加

			// 新しい行にセルを追加
			var cell1 = newRow.insertCell(0);
			var input1 = document.createElement("input");
			input1.type = "text";
			input1.name = "text";
			input1.value = ""; // 初期値は空に設定
		    input1.style.width = "100%"; // width: 100% を設定
		    input1.className = "form-control"; // Bootstrap の form-control クラスを設定
			cell1.appendChild(input1);

			var cell2 = newRow.insertCell(1);
			var addButton = document.createElement("input");
			addButton.type = "button";
			addButton.value = "行を追加";
			addButton.className = "btn btn-outline-primary";
			addButton.onclick = function() {
				addRow(this);
			}; // 新しい行にも追加ボタンを作成する
			cell2.appendChild(addButton);

			var cell3 = newRow.insertCell(2);
			var deleteButton = document.createElement("input");
			deleteButton.type = "button";
			deleteButton.value = "行を削除";
			deleteButton.className = "btn btn-outline-danger";
			deleteButton.onclick = function() {
				deleteRow(this);
			}; // 新しい行にも削除ボタンを作成する
			cell3.appendChild(deleteButton);
		}

		function deleteRow(button) {
			var table = document.getElementById("wordTable");
			var rowIndex = button.parentNode.parentNode.rowIndex; // クリックされたボタンの親行のインデックスを取得
			// 最初の行（ヘッダー行）は削除しないようにする
			if (rowIndex !== 1) {
				table.deleteRow(rowIndex); // クリックされた行を削除
			}
		}
	</script>
</body>
</html>