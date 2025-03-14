from psycopg import Connection

# from dotenv import load_dotenv
# import os
from src.config import *

# load_dotenv()


def connect_to_db():
    print("Connecting to database: " + PG_DATABASE)
    return Connection.connect(
        user=PG_USER,
        password=PG_PASSWORD,
        dbname=PG_DATABASE,
        host=PG_HOST,
        port=PG_PORT,
    )


def close_db_connection(conn):
    if conn:
        conn.close()
