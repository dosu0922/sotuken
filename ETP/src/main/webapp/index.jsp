<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ログイン画面</title>
</head>
<body>
<h1>ログイン画面（画面遷移のみ）</h1>
<form action="/ETP/LoginServlet" method="post">
メールアドレス:<input type="text" name="mail" value=""><br>
パスワード:<input type="password" name="password" value=""><br>
<input type="submit" value="ログイン">
</form>
</body