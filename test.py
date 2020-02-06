import requests

proxy = {
    'http': 'http://13.92.199.115',
    'https': 'http://13.92.199.115'
}

res = requests.get(
    'https://www.google.com',
    proxies=proxy
)

print(res.status_code)