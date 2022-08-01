import requests

response = requests.get(url="http://api.open-notify.org/iss-now.json")

# To see status code
# print(response.status_code)

response.raise_for_status()

# Actual data
data = response.json()
# print(data)

# To get hold of latitude & longitude
lat = data["iss_position"]["latitude"]
lon = data["iss_position"]["longitude"]
print(lat)
print(lon)
