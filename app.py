from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return "<h1 style='text-align: center;'>Welcome to my Cloud DevOps Engineer Capstone Project! I am LongPB. </h1>"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)