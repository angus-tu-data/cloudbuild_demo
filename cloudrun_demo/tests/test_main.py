import pytest
from app.main import app

@pytest.fixture
def client():
    app.testing = True
    with app.test_client() as client:
        yield client

def test_root_route(client):
    """test 200"""
    response = client.get("/")
    assert response.status_code == 200
    assert response.json["message"] == "Hello, Cloud Run!"
