<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<title>単語入力トップ</title>
</head>
<body>
	<div class="container">
	<h1>単語入力</h1>
	<form action="/Word/ConfirmServlet" method="get">
		<div class="">
			<div class="form-check bg-body-secondary">
				<input class="m-3" id="radio-t" type="radio" name="field" value="T" checked="checked">
				<label for="radio-t">テクノロジ系 大分類１～大分類４までテクノロジ系</label>
			</div>
			<div class="form-check">
				<input class="m-3" id="radio-m" type="radio" name="field" value="M">
				<label for="radio-m">マネジメント系 大分類５～大分類６までマネジメント系</label>
			</div>
			<div class="form-check bg-body-secondary">
				<input class="m-3" id="radio-s" type="radio" name="field" value="S">
				<label for="radio-s">ストラテジ系 大分類７～大分類９までストラテジ系</label>
			</div>
		</div>
		<textarea class="form-control" style="width: 100%; height: 300px;" name="text" placeholder="単語を入力"></textarea><br>
		<input class="btn btn-primary btn-lg col-12" type="submit" value="送信">
	</form>
	</div>
</body>
</html>