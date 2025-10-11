# route_engine.py

import requests
import random
# ... other imports will go here ...

# --- CONFIGURATION: REPLACE WITH YOUR ACTUAL KEYS ---
ORS_API_KEY = "eyJvcmciOiI1YjNjZTM1OTc4NTExMTAwMDFjZjYyNDgiLCJpZCI6ImQzYjRlMWRlYjhlYzRlMzlhYTc1NjM2ODI2ZTI4MDI0IiwiaCI6Im11cm11cjY0In0=" 
OWM_API_KEY = "M4mNkwDJoVGkyJE0PHhwA9W5It511Sk6"
# ----------------------------------------------------

# --- CORE ROUTING FUNCTION (OpenRouteService) ---
def fetch_optimized_route(start_coords, end_coords, preference="fastest"):
    """
    Fetches route from ORS. 
    start_coords/end_coords should be (lat, lon) for our logic.
    """
    url = "https://api.openrouteservice.org/v2/directions/driving-car"
    
    # ORS requires coordinates in [lon, lat] format, so we flip them from (lat, lon)
    coords = [
        [start_coords[1], start_coords[0]],
        [end_coords[1], end_coords[0]]
    ]
    
    headers = {
        'Authorization': ORS_API_KEY,
        'Content-Type': 'application/json; charset=utf-8'
    }
    
    body = {
        "coordinates": coords,
        "preference": preference,
        "units": "km"
    }

    try:
        response = requests.post(url, json=body, headers=headers)
        response.raise_for_status() # Catches 400/500 errors
        data = response.json()
        
        # Extract route data from the first route result
        route_data = {
            "distance_km": data['routes'][0]['summary']['distance'] / 1000,
            "duration_min": round(data['routes'][0]['summary']['duration'] / 60),
            "geometry": data['routes'][0]['geometry'], # This is the path the frontend needs
            # --- AI Touch: Mock Scoring (Duo 2 will make this real) ---
            "safety_score": random.randint(75, 95), 
            "toll_cost_inr": 0, # Placeholder for now
        }
        return route_data

    except requests.exceptions.RequestException as e:
        print(f"ORS API Error: {e}")
        # Return fallback data if the API call fails (crucial for hackathons!)
        return {
            "distance_km": 100, 
            "duration_min": 120, 
            "geometry": "FALLBACK_COORDS",
            "safety_score": 50,
            "toll_cost_inr": 0,
        }
