from app.app import app

def test_home():
    response = app.test_client().get("/")
    assert response.status_code == 200
    assert b"Zero-Touch Deployments" in response.data

def test_health():
    response = app.test_client().get("/health")
    assert response.status_code == 200
    assert response.json["status"] == "healthy"
