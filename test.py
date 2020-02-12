import requests
import os             
import concurrent
import pymongo

from concurrent.futures import ThreadPoolExecutor
from concurrent.futures import Future
from pprint import pprint



production_mongouri = 'mongodb+srv://admin:milo@cluster0-6pqfq.azure.mongodb.net/test?retryWrites=true'
client = pymongo.MongoClient(production_mongouri)
sneaker_db = client.SneakerBills
sneaker_db.azure_proxies.delete_many({})
all_files = os.listdir('proxy_files/')
public_ip_address = []

for filename in all_files:
    print(f'proxy_files/{filename}')
    fd = open(f'proxy_files/{filename}', 'rt')
    lines = list(map(lambda line: line.replace('\n', '').replace(',', ''),  list(fd.readlines())))
    public_ip_address += lines


working_count = 0


def test_ip(ip: str):
    global working_count
    try:
        proxy = {
            'http': 'socks5:{}:46642'.format(ip),
            'https': 'socks5:{}:46642'.format(ip)
        }
        res = requests.get(
            'https://www.google.com',
            proxies=proxy,
            timeout=2
        )
    except:
        print('{} doest work'.format(proxy['http']))
        return
    
    working_count += 1
    print('works {}'.format(proxy['http']))
    sneaker_db.azure_proxies.insert_one({
        'ip': ip,
        'ip_with_port': f'{ip}:46642',
        'port': '46642'
    })

with ThreadPoolExecutor(100) as executor:
    futures = [executor.submit(
        test_ip, ip) for ip in public_ip_address]


print('{} out of {} proxies work'.format(working_count, len(public_ip_address)))