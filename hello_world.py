from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "<html><body>Flash App</body></html>"
