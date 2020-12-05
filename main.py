

from flask import Flask
from flask_restful import Resource, Api

app = Flask(__name__)
api = Api(app)


class HelloWorld(Resource):
    def get(self):
        return {'oi': 'sua linda!'}


api.add_resource(HelloWorld, '/')


if __name__ == '__main__':
    print(">>>>>>>>> Estamos muito feliz que você chegou até aqui! Continue estudando que você vai longe <3 <<<<<<<<<")
    print(">>>>>>>>> Execute um get, para chamar a api disponível neste projeto, a porta é a 5000 <<<<<<<<<")
    app.run(port='5000', host='0.0.0.0', debug=True)
