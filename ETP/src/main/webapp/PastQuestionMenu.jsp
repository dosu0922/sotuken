<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons%7CMaterial+Icons+Outlined"
rel="stylesheet"/>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="PastQuestionMenu.css" />
<title>フレーム</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
	<div class="flex">
		<div class="left">
			<span class="material-icons-outlined open"> menu </span>
		</div>
		<div class="right">
			<div class="container-fluid"> 
				<a class="navbar-brand" href="/ETP/MainMenuServlet"> EduTechPro / サンプル </a>
			</div>
		</div>
	</div>
	</nav>
	
    <div class= "menubar">
          <span class="material-icons-outlined close">arrow_back_ios</span>
        <ul>
          <li>
            <a href="index.jsp">アカウント</a>
          </li>
          <li>
            <a href="index.jsp">設定</a>
          </li>
          <li>
            <a href="index.jsp">ログアウト</a>
          </li>
        </ul>
      </div>
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
						href="" >表示</a>
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
		</div>
	</div>
      <script src="PastQuestionMenu.js"></script>

</body>
</html>