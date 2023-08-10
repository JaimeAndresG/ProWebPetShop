import requests

response2 = requests.get('https://digimon-api.vercel.app/api/digimon').json()

print(response2['results'])