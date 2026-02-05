import os
import json
from flask import Flask, jsonify, render_to_path, render_template, request, redirect, url_for
from pymongo import MongoClient
from dotenv import load_dotenv

load_dotenv()

app = Flask(__name__)

# Configure MongoDB Atlas URI here or in .env file
# Example: MONGO_URI=mongodb+srv://<username>:<password>@cluster.mongodb.net/test
MONGO_URI = os.getenv("MONGO_URI", "your_mongodb_atlas_uri_here")
client = MongoClient(MONGO_URI)
db = client.assignment_db
collection = db.submissions

@app.route("/")
def index():
    return render_template("index.html")

@app.route("/api")
def get_api_data():
    try:
        with open("data.json", "r") as file:
            data = json.load(file)
        return jsonify(data)
    except Exception as e:
        return jsonify({"error": str(e)}), 500

@app.route("/submit", methods=["POST"])
def submit_data():
    name = request.form.get("name")
    email = request.form.get("email")
    message = request.form.get("message")
    
    if not name or not email:
        return render_template("index.html", error="Name and Email are required!")
    
    try:
        # Insert into MongoDB
        collection.insert_one({
            "name": name,
            "email": email,
            "message": message
        })
        return redirect(url_for("success"))
    except Exception as e:
        return render_template("index.html", error=f"Database Error: {str(e)}")

@app.route("/success")
def success():
    return render_template("success.html")

if __name__ == "__main__":
    app.run(debug=True)
