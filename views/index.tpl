<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Söluaðilar</title>
    <link rel="stylesheet" type="text/css" href="/static/style.css">
</head>
<body>

	<div class="row">
		<section>
		    <h2>söluaðila eldsneytis</h2>
		    <div class="myndir">
		    	<img src="/static/mynd0.png">
		    	<img src="/static/mynd1.png">
		    	<img src="/static/mynd2.png">
		    	<img src="/static/mynd3.png">
		    	<img src="/static/mynd4.png">
		    	<img src="/static/mynd5.png">
		    	<img src="/static/mynd6.jpg">

			</div>
			<div class="wrapper">
				<%
					#lægsta verðið
					minpriceP = 2000.0
					minpriceD = 2000.0
					l = len(data['results'])

					for i in range(l-1):
						c = i
						if minpriceP > data['results'][i]['bensin95']:
							minpriceP = data['results'][i]['bensin95']
							companyP = data['results'][i]['company']
						end
						if minpriceD > data['results'][i]['diesel']:
							minpriceD = data['results'][i]['diesel']
							companyD = data['results'][i]['company']
						end

					if (data['results'][i]['company'] != data['results'][i+1]['company']):
				%>	
					<div class="box">
						<a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a>
					</div><br>
					<% end
				end %>
			</div>
			<div class="bestaverd">
				<h3>Besta verðið</h3>
				<h4>Bensín 95 oktan: <i>{{minpriceP}} kr. er hjá: {{companyP}}</i></h4>
				<h4>Díesel oktan: <i>{{minpriceD}} kr. er hjá: {{companyD}}</i></h4>
			</div>
			<div>
				<%
					import datetime
					t = data['timestampPriceCheck']
					t = t [:19]
					d = datetime.datetime.strptime(t,'%Y-%m-%dT%H:%M:%S')
				%>
				<h5>Sidast uppfaert: {{d.strftime('%d.%m.%Y kl.%H:%M:%S')}}</h5>
			</div>
		</section>
</body>
</html>