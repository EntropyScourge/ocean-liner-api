from fastapi import FastAPI, HTTPException
from src.db.connection import connect_to_db

app = FastAPI()


@app.get('/ships')
def get_list_of_ships():
    conn = connect_to_db()
    cursor = conn.cursor()
    response = cursor.execute('SELECT * FROM ships;')
    return {}