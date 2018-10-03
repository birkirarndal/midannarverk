<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>{{c}}</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
</head>
<body>
	<h1>Bensínstöðvar</h1>
	<br>
	
	<table>
	<tr>
		<th>Fyrirtæki</th>
		<th>staður</th>
	</tr>
	 <%
	 	cnt = 0
	 	for i in data['results']:
		 	if i['company'] == c:
		 	cnt += 1
	%>
		<tr>
			<td><a href="/moreinfo/{{i['key']}}">{{i['company']}}</a></td>
			<td>{{i['name']}}</td>
		</tr>
	<%
			end
		end
	%>
	</table>
	<h3>Fjöldi stöðva: {{cnt}}</h3>
</body>
<footer>
	<a class="heim" href="/">Heim</a>
</footer>
</html>