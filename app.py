from bottle import run, route, template, redirect

@route('/')
def index():
    return template('index.tpl')


@route('/design1')
def index():
    return template('design1')

@route('/design2')
def index():
    return template('design2')

@route('/design3')
def index():
    return template('design3')

@route('/design4')
def index():
    return template('design4')

@route('/rutebil')
def rutebil():
    redirect("http://skilt.akt.no/Tmix.Cap.DigSig.Gui/App/Rtpi.aspx?numberOfRows=15&stopAreaId=24252")
    

if __name__ == '__main__':
    run(host='127.0.0.1', debug=True, reloader=True)
