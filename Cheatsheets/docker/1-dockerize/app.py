from flask import Flask, json
import socket

app = Flask(__name__)

@app.route("/")
def hello_world():
    html = f"<h1>Hello World!</h1> Served from <b>{socket.gethostname()}</b>"
    return html

if __name__ == '__main__':
	app.run(host="0.0.0.0", port=3000)