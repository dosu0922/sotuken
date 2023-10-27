'''
Created on 2023/10/26

@author: 216077
'''

import requests
from bs4 import BeautifulSoup

# スクレイピング対象の URL にリクエストを送り HTML を取得する
res = requests.get('https://www.ap-siken.com/kakomon/05_aki/q1.html')
soup = BeautifulSoup(res.text, 'html.parser')

kakomon = soup.find('div', class_='main kako')

#年度時期問番号
nendojikitoubangou = kakomon.find('h2').text
print(nendojikitoubangou)

#問番号
toibangou = kakomon.find('h3', class_='qno').text
print(toibangou)

#問題文
mondaibun = kakomon.find('div', id='mondai').text
print(mondaibun)

#分野、大分類、中分類
cf = soup.find('div', class_='cf')
bunrui = cf.find('p').text
print(bunrui)

#正解
#