from bs4 import BeautifulSoup

with open("website.html", encoding="utf8") as file:
    contents = file.read()

# print(contents)

soup = BeautifulSoup(contents, 'html.parser')

# to print the whole website
# print(soup)

# to prettify the whole website
# print(soup.prettify())

# to print the title name
# print(soup.title.string)

# to print all links
# print(soup.find_all('a'))

# to print the content of all links
# for i in soup.find_all('a'):
# print(i.getText())
# print(i.get("href"))

# to find an element using id
# heading = soup.find(name='h1', id='name')
# print(heading)

# to find element using class
# section_heading = soup.find(name='h3', class_='heading')
# print(section_heading)
# print(section_heading.getText())
# print(section_heading.get('class'))


# to find element using specific tags
# url = soup.select_one(selector='p a')
# print(url)
# url1 = soup.select_one(selector="#name")
# print(url1)
# url2 = soup.select(selector=".heading")
# print(url2)

import sys
print(sys.executable)