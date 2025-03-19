from fastapi import FastAPI, HTTPException
from src.db.connection import connect_to_db
from datetime import datetime as dt

app = FastAPI()


@app.get('/ships')
def get_list_of_ships():
    # conn = connect_to_db()
    # cursor = conn.cursor()
    # response = cursor.execute('SELECT * FROM ships;')
    return {'ships': [{'name':'', 
            'launch_date': dt(1996,1,1),
            'maiden_voyage': dt(1996,1,1),
            'keel_laid': dt(1996,1,1),
            'length_m': 1,
            'beam_m': 1,
            'draught_m': 1,
            'gross_reg_tge': 1,
            'powerplant': '', 
            'propulsion': '', 
            'line': '', 
            'yard': '', 
            'captains': [],
            'survives': True, 
            'status': '',
            'running_mates': [],
            'port_registry': '', 
            'routes': []}]}