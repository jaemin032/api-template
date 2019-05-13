# -*- coding: utf-8 -*- 

from flask import Flask
from flask import jsonify
from flask import request

from flask_cors import CORS, cross_origin

app = Flask(__name__)


@app.route('/topic')
def topic():
    text = request.args['text']
    response = {'key1': 'value1'}
    return jsonify(response)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=80)
