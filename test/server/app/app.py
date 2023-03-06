from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'This is the Kanadventures root'

if(__name__ == '__main__'):
    app.run()