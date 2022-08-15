from bs4 import BeautifulSoup
import requests

response = requests.get(url='https://web.archive.org/web/20200518073855/https://www.empireonline.com/movies/features/best-movies-2/')
website_data = response.text

soup = BeautifulSoup(website_data, 'html.parser')
series_name = soup.find_all(name='h3', class_="title")
series_list = []
for name in series_name:
    series_list.append(name.getText())

# movies lists
for i in series_list[::-1]:
    print(i)

