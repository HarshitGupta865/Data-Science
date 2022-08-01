import requests

res = requests.get(url="http://api.open-notify.org/iss-now.json")
res.raise_for_status()
data = res.json()

URL = "http://api.sunrise-sunset.org/json"
parameters = {
    "lat": 22.804565,
    "lng": 86.202873,
}

response = requests.get(URL, params=parameters)
response.raise_for_status()

print(response.json())