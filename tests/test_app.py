from app import app
from urllib.parse import quote as url_quote
def test_index():
    client = app.test_client()
    response = client.get('/')
    assert response.status_code == 200
