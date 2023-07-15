#!/usr/bin/env python
# -*- coding: utf-8 -*-
from flask import Flask, jsonify, request
from flask_cors import CORS

    

# configuration
DEBUG = True

# instantiate the app
app = Flask(__name__)
app.config.from_object(__name__)
app.config['JSON_AS_ASCII'] = True
# enable CORS
CORS(app, resources={r'/*': {'origins': '*'}})


# sanity check route
RESOURCES = {}


@app.route('/', methods=['GET',"PUT"])
def all_res():
    #Get详见report
    if request.method == "GET":
        username = request.args.get('username')
        if username == "":
            response_object = {'status': 'failed'}
        else:
            response_object = {'status': 'successful'}
            if username not in RESOURCES:
                RESOURCES[username] = 0
            response_object['usage'] = RESOURCES[username]
            print("GET:",username,RESOURCES[username])
            return jsonify(response_object)
            
    #put详见report
    elif request.method == "PUT":
        params = request.get_json().get('params')
        username = params.get('username')
        if username == "":
            response_object = {'status': 'failed'}
        else:
            response_object = {'status': 'successful'}
            if username not in RESOURCES:
                RESOURCES[username] = 0
            else:
                RESOURCES[username] += 10
            print("PUT:",username,RESOURCES[username])
            return jsonify(response_object)

if __name__ == '__main__':
    app.run()