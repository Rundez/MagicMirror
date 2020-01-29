from bottle import run, route, template


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

if __name__ == '__main__':
    run(host='127.0.0.1', debug=True, reloader=True)
