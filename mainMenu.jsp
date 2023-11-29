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
<title>メインメニュー</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="/ETP/MainMenuServlet"> EduTechPro / メインメニュー </a>
		</div>
	</nav>
	<div
		class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
		<div class="display-4">メインメニュー</div>
	</div>
	<div class="container">
		<div class="card-deck mb-3 text-center row">
			<div class="card mb-4 shadow-sm col-6">
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						<small class="text-muted">国家資格対策</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>LIST1</li>
						<li>LIST2</li>
					</ul>
					<!-- hrefに各自でパスを書いてください -->
					<a class="btn btn-lg btn-block btn-outline-primary"
						href="PastQuestionMenuServlet" >表示</a>
				</div>
			</div>
			<div class="card mb-4 shadow-sm col-6">
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						<small class="text-muted">質問箱</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>LIST1</li>
						<li>LIST2</li>
					</ul>
					<!-- hrefに各自でパスを書いてください -->
					<a class="btn btn-lg btn-block btn-outline-primary"
						href="" >表示</a>
				</div>
			</div>
			<div class="card mb-4 shadow-sm col-12">
				<div class="card-body">
					<h1 class="card-title pricing-card-title">
						<small class="text-muted">資料作成</small>
					</h1>
					<ul class="list-unstyled mt-3 mb-4">
						<li>LIST1</li>
						<li>LIST2</li>
					</ul>
					<!-- hrefに各自でパスを書いてください -->
					<a class="btn btn-lg btn-block btn-outline-primary"
						href="" >表示</a>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
