import pytest
from fastapi.testclient import TestClient
from src.api.app import app
from unittest.mock import patch
from datetime import datetime as dt


@pytest.fixture(scope="function")
def client():
    return TestClient(app)


class TestGetShips:
    def test_ships_endpoint_returns_ok_status_code(self, client):
        response = client.get("/ships")
        assert response.status_code == 200

    def test_ships_endpoint_returns_correct_types(self, client):
        response = client.get("/ships")
        for ship in response.json()['ships']:
            assert isinstance(ship["name"], str), "name must be a string"
            assert isinstance(ship["launch_date"], str), "launch_date must be a Date object"
            assert isinstance(ship["maiden_voyage"], str), "maiden_voyage must be a Date object"
            assert isinstance(ship["keel_laid"], str), "keel_laid must be a Date object"
            assert isinstance(ship["length_m"], (int, float)), "length_m must be a number"
            assert isinstance(ship["beam_m"], (int, float)), "beam_m must be a number"
            assert isinstance(ship["draught_m"], (int, float)), "draught_m must be a number"
            assert isinstance(ship["gross_reg_tge"], (int, float)), "gross_reg_tge must be a number"
            assert isinstance(ship["powerplant"], str), "powerplant must be a string"
            assert isinstance(ship["propulsion"], str), "propulsion must be a string"
            assert isinstance(ship["line"], str), "line must be a string"
            assert isinstance(ship["yard"], str), "yard must be a string"
            assert isinstance(ship["captains"], list), "captains must be a list"
            assert isinstance(ship["survives"], bool), "survives must be a boolean"
            assert isinstance(ship["status"], str), "status must be a string"
            assert isinstance(ship["running_mates"], list), "running_mates must be a list"
            assert isinstance(ship["port_registry"], str), "port_registry must be a str"
            assert isinstance(ship["routes"], list), "routes must be a list"
