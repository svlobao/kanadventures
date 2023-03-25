from flask import Flask

app = Flask(__name__)

@app.route('/')
def initApp():
    return 'Flask application is running'
