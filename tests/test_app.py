from app import app
from werkzeug.urls import url_quote

def test_index():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
