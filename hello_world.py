from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "<html><body>Flask App</body></html>"
