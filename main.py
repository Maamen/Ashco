import json
import smtplib
import os
from flask import escape
from flask import Flask, request, jsonify
import firebase_admin
import google.cloud.firestore
from firebase_admin import credentials
from firebase_admin import firestore
from firebase_admin import credentials, initialize_app, storage
import tempfile
import os



# Initialize Firebase app using a service account key
cred = credentials.Certificate("Key.json")
initialize_app(cred, {"storageBucket": "gs://ashconnect-384214.appspot.com"})




# Get a reference to the Firestore database
db = firestore.client()

app = Flask(__name__)

# Get a reference to the Firestore collections
user_ref = db.collection("users")
post_ref = db.collection("posts")

@app.route('/users', methods=['POST'])
def create_user():
    # Get user data from request body
    data = request.get_json()

    # Create user object with data
    user = {
        'name': data['name'],
        'email': data['email'],
        'student_id': data['student_id'],
        'date_of_birth': data['date_of_birth'],
        'year_group': data['year_group'],
        'major': data['major'],
        'campus_residence': data['campus_residence'],
        'best_food': data['best_food'],
        'best_movie': data['best_movie']
    }

    # Add user to Firestore database
    user_ref.document(data['email']).set(user)

    # Return success response
    return jsonify({'message': 'User created successfully!'})

@app.route('/users', methods=['PUT'])
def update_user():
    # Get user data from request body
    data = request.get_json()

    # Update user object with new data
    user_updates = {
        'email': data.get('email', ''),
        'date_of_birth': data.get('date_of_birth', ''),
        'year_group': data.get('year_group', ''),
        'major': data.get('major', ''),
        'campus_residence': data.get('campus_residence', ''),
        'best_food': data.get('best_food', ''),
        'best_movie': data.get('best_movie', '')
    }

    # Update user document in Firestore database
    user_ref.document(data['email']).update(user_updates)

    # Return success response
    return jsonify({'message': 'User updated successfully!'})

@app.route('/users', methods=['GET'])
def get_users_by_email():
    # Get name parameter from query string
    email = request.args.get('email')

    # Retrieve all user documents from Firestore database where email matches
    users_query = user_ref.where('email', '==', email).stream()

    # Initialize an empty list to hold the user data
    user_data = []

    # Loop through all user documents that match the query and append the user data to the list
    for user_doc in users_query:
        user_data.append(user_doc.to_dict())

    # Return all user data in JSON format
    return jsonify(user_data)



# Send email notification to all users
@app.route('/posts', methods=['POST'])
def create_post():
    # Get post data from request body
    data = request.get_json()

    # Create post object with data
    post = {
        'name': data['name'],
        'text': data['text']
    }

    # Add post to Firestore database
    post_ref.document().set(post)

    # Send email notification to all users
    send_notification(post)

    # Return success response
    return jsonify({'message': 'Post created successfully!'})

# Define route for image upload API endpoint
@app.route("/upload_image", methods=["POST"])
def upload_image():
    # Extract image file from request payload
    file = request.files.get("image")

    # Save image file to temporary location on server
    _, filename = tempfile.mkstemp()
    file.save(filename)

    # Upload image file to Firebase Cloud Storage
    bucket = storage.bucket()
    blob = bucket.blob("images/" + file.filename)
    blob.upload_from_filename(filename)

    # Delete temporary file from server
    os.remove(filename)

    # Return success response to Flutter app
    return jsonify({"status": "success"})

app.run(debug=True)