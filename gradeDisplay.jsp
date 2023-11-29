<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<link
	href="https://fonts.googleapis.com/icon?family=Material+Icons%7CMaterial+Icons+Outlined"
	rel="stylesheet" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./css/gradeDisplay.css" />
<link rel="stylesheet" type="text/css" href="./css/pastQuestionMenu.css" />
<title>過去問成績表示</title>
</head>
<body>
	<nav class="navbar navbar-light bg-light">
		<div class="flex">
			<div class="left">
				<span class="material-icons-outlined open"> menu </span>
			</div>
			<div class="right">
				<div class="container-fluid">
					<a class="navbar-brand" href="/ETP/MainMenuServlet"> EduTechPro
						/ 過去問成績表示 </a>
				</div>
			</div>
		</div>
	</nav>

	<div class="menubar">
		<span class="material-icons-outlined close">arrow_back_ios</span>
		<ul>
			<li><a href="index.jsp">アカウント</a></li>
			<li><a href="index.jsp">設定</a></li>
			<li><a href="index.jsp">ログアウト</a></li>
		</ul>
	</div>

	<div class="item">
		<div class="grade1">
		<table class="container">
		
			<tr>
				<!-- 行1（見出し）-->
				<th>総合成績</th>
			</tr>

			<tr>
				<!-- 行2 -->
				<td>400問/800問</td>
			</tr>

			<tr>
				<!-- 行3 -->
				<th>分野別の成績</th>
			</tr>

			<tr class="bg-warning">
				<!-- 行4 -->
				<td>テクノロジ系</td>
			</tr>

			<tr>
				<!-- 行5 -->
				<td>300問/500問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行6 -->
				<td>マネジメント系</td>
			</tr>

			<tr>
				<!-- 行7 -->
				<td>80問/100問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行8 -->
				<td>ストラテジ系</td>
			</tr>

			<tr>
				<!-- 行9 -->
				<td>100問/200問</td>
			</tr>

			<!-- 行10 -->
			<th>大分類別の成績</th>
			</tr>

			<tr>
				<!-- 行11 -->
				<td class="bg-warning">基礎理論</td>
			</tr>

			<tr>
				<!-- 行12 -->
				<td>30問/50問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行13 -->
				<td>コンピュータシステム</td>
			</tr>

			<tr>
				<!-- 行14 -->
				<td>30問/50問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行15 -->
				<td>技術要素</td>
			</tr>

			<tr>
				<!-- 行16 -->
				<td>30問/50問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行17 -->
				<td>開発技術</td>
			</tr>

			<tr>
				<!-- 行18 -->
				<td>30問/50問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行19 -->
				<td>プロジェクトマネジメント</td>
			</tr>

			<tr
				<!-- 行20 -->
				<td>30問/50問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行21 -->
				<td>サービスマネジメント</td>
			</tr>

			<tr
				<!-- 行22 -->
				<td>30問/50問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行23 -->
				<td>システム戦略</td>
			</tr>

			<tr
				<!-- 行24 -->
				<td>30問/50問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行25 -->
				<td>経営戦略</td>
			</tr>

			<tr
				<!-- 行26 -->
				<td>30問/50問</td>
			</tr>

			<tr class="bg-warning">
				<!-- 行27 -->
				<td>企業と法務</td>
			</tr>

			<tr
				<!-- 行28 -->
				<td>30問/50問</td>
			</tr>
	</table>
	</div>
	
	
	<div class="grade2">
	<table>
	<tbody>
		<tr>
			<td>No</td>
			<td>正誤</td>
			<td>分野</td>
			<td>大分類</td>
			<td>出典</td>
			<td>全生徒の正答率</td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
		</tr>
	</tbody>
</table>
</div>



	<script src="./js/pastQuestionMenu.js"></script>
</body>
</html>
