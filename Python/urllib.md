#urllib

* Python module used to fetch URLS
* Fetches the "URL Schemes" (whatever is before the ':' this is usually "HTTP" or "HTTPS")
* `urlopen` is one of the most basic functions


##Simple example

```python
import urllib.request

with urllib.request.urlopen(http://google.co.uk) as response:
	html = response.read()
```
##Screen Scraping

> Screen scraping(or data scraping) is the process of using a program to extract data from a website

#BeautifulSoup4

* Screen scraping tool
* Can automatically can convert documents to unicode

`pip install beautifulsoup4`

