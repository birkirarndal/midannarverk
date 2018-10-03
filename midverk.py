from sys import argv
import bottle
from bottle import *
import urllib.request, json

with urllib.request.urlopen("http://apis.is/petrol") as url:
    data = json.loads(url.read().decode())

# templates
@route("/")
def index():
    return template("index.tpl", data=data)

@route('/company/<company>')
def index(company):
    return template('company', data=data, c=company)

@route('/moreinfo/<key>')
def index(key):
    return template('moreinfo', data=data, k=key)


######################################################
@route("/static/<skra>")
def static_skrar(skra):
    return static_file(skra, root='./static/')

@error(404)
def villa(error):
    return "<h2 style='color:red'>Þessi síða finnst ekki</h2>"

#run(host='localhost', port=8080, reloader=True, debug=True)
bottle.run(host='0.0.0.0', port=argv[1])