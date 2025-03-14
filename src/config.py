import os
from dotenv import load_dotenv

TESTING = os.getenv("TESTING")

if TESTING == "True":
    load_dotenv(".env.testing")
else:
    load_dotenv(".env.development")

PG_USER = os.getenv("PG_USER")
PG_HOST = os.getenv("PG_HOST")
PG_DATABASE = os.getenv("PG_DATABASE")
PG_PORT = os.getenv("PG_PORT")
PG_PASSWORD = os.getenv("PG_PASSWORD")
env = os.getenv("env")
