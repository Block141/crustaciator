import json
from flask import Flask
from flask_cors import CORS
import psycopg2

app = Flask(__name__)
CORS(app)
HOST = open("db_ip_addr").read().rstrip()
PORT = "5432"

@app.route('/')
def index():
    return json.dumps({'msg': "success"})

@app.route('/all')
def all_crustaceans():
    with psycopg2.connect(
    host=HOST,
    port=PORT,  # whatever port postgres is running on
    database="crustacean",
    user="postgres",
    password="password") as conn:
        with conn.cursor() as cursor:
            cursor.execute("SELECT * FROM Crustacean")
            crustaceans = cursor.fetchall()
    conn.close()
    return json.dumps({'crustaceans': crustaceans if crustaceans else "No crustaceans found..."})

@app.route('/<id>')
def single_crustacean(id):
    with psycopg2.connect(
    host=HOST,
    port=PORT,   # whatever port postgres is running on
    database="crustacean",
    user="postgres",
    password="password") as conn:
        with conn.cursor() as cursor:
            cursor.execute("SELECT * FROM Crustacean WHERE id = (%s)", (id,))
            crustacean = cursor.fetchone()
    conn.close()
    return json.dumps({'crustacean': crustacean if crustacean else "Crustacean not found"})


app.run(host='0.0.0.0', port=8000, debug=True)
