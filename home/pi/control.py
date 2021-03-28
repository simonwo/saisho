from os import system
from flask import Flask
app = Flask(__name__)

@app.route('/start')
def start():
    system("sudo systemctl start x")
    return "OK", 200

@app.route('/stop')
def stop():
    system("sudo systemctl stop x")
    return "OK", 200

if __name__ == "__main__":
    app.run(host='0.0.0.0')
