import requests
from pprint import pprint



public_ip_address = [
  "13.92.80.180",
  "13.92.81.38",
  "13.90.229.80",
]


for ip in public_ip_address[0]:
    proxy = {
        'http': 'http://{}:46642'.format(ip),
        'https': 'http://{}:46642'.format(ip)
    }
    pprint(proxy)
    res = requests.get(
        'http://www.stockx.com',
        proxies=proxy
    )
    print(res.content)


print('done')
