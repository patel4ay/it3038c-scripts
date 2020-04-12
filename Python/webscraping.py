from bs4 import BeautifulSoup
import requests, re

data = requests.get("https://www.nike.com/t/air-force-1-sage-low-womens-shoe-b0cz8K/AR5339-002").content
soup = BeautifulSoup(data, 'html.parser')
span = soup.find("h1" ,{"id":"pdp_product_title"},{"class":"headline-2 css-33lwh4"})
product = span.text
item = soup.find("div",{"class":"css-b9fpep"})
price = item.text
print("The product is %s and the price is %s" % (product, price))