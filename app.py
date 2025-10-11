# app.py

from flask import Flask, jsonify, request
# NOTE: Add CORS if testing locally with a React/HTML frontend
from flask_cors import CORS 

# Import the core function from your other file
from route_engine import fetch_optimized_route

app = Flask(__name__)
CORS(app) # Allows the frontend to call this API when running locally

# --- BASE ENDPOINT FOR TESTING ---
@app.route('/')
def hello_world():
    return 'Backend is running! Call /api/route for navigation data.'

# --- API ENDPOINT: GET OPTIMIZED ROUTE ---
@app.route('/api/route', methods=['GET'])
def get_optimized_route():
    """
    Main route endpoint for navigation.
    Pulls coordinates from the URL query string.
    """
    # Use default coordinates (e.g., from a city) if none are provided
    start_lat = float(request.args.get('start_lat', 19.0760))
    start_lon = float(request.args.get('start_lon', 72.8777))
    end_lat = float(request.args.get('end_lat', 18.5204))
    end_lon = float(request.args.get('end_lon', 73.8567))

    start_coords = (start_lat, start_lon)
    end_coords = (end_lat, end_lon)

    # Call the ORS function
    route_data = fetch_optimized_route(start_coords, end_coords)

    return jsonify({
        "status": "success",
        "ai_optimized_route": route_data
    })

# --- RUN THE APP ---
if __name__ == '__main__':
    # Use 0.0.0.0 for external access on LinuxONE/Cloud later
    app.run(debug=True, host='0.0.0.0', port=5000)