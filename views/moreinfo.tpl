<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, inital-scale=1.0">
	<title>Nánari upplýsingar</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
</head>
<body>
	<h1>Nánari upplýsingar</h1>
	<%
		for i in data['results']:
			if i['key'] == k:
	%>
		<h3>Söluaðili: {{i['company']}}</h3>
		<h3>Staður: {{i['name']}}</h3>
		<h3>Bensín 95: {{i['bensin95']}}</h3>
		<h3>Disel: {{i['diesel']}}</h3>
		<div class="kort">
			<h4>stadsetning</h4>
			<ul>
				<li>Breiddargraða: {{i['geo']['lat']}}</li>
				<li>Lengdargraða: {{i['geo']['lon']}}</li>
				<li><a href="https://www.google.com/maps/@{{i['geo']['lat']}},{{i['geo']['lon']}},18z/">staðsetning á google maps</a></li>
			</ul>
		</div>

</body>
</html>