from flask import Flask, jsonify

app = Flask(__name__)

@app.get("/")
def home():
    return """
    <html>
      <head><title>Zero-Touch E-Commerce</title></head>
      <body>
        <h1>Zero-Touch Deployments</h1>
        <p>Flask application running in Docker.</p>
        <p>Infrastructure: Terraform | AWS ECS Fargate</p>
      </body>
    </html>
    """

@app.get("/health")
def health():
    return jsonify(status="healthy"), 200

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
