from flask import Flask
import sys

app = Flask(__name__)

@app.route("/health")
def health():
    return "200 OK"
@app.route("/message")
def message():
    return sys.argv[1]


if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80, debug=True)
