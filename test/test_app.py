import pytest
from fastapi.testclient import TestClient
from src.api.app import app
from unittest.mock import patch


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
            assert type(ship['id']) == int
            assert type(ship['name']) == str
            