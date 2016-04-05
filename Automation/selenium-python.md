#Selenium with Python

###installation 

in the shell type `python -m pip install selenium`

###importation

from selenium import webdriver

###initialisation

    browser = webdriver.Firefox()
    browser.get("http://www.google.com")

###Common interactions

`element = browser.find_element_by_id("gs_70")`

click
`element.click()`

input text
`element.send_keys("hello")

####Checkboxes and Radio buttons

```python
if not box.is_selected():
    box.click()
```
**To iterate over a list of radio buttons with the same name**

```python
radiobuttons = browser.find_elements_by_name("rad")

for radio in radiobuttons:
    radio.click()
```

**Clicking a specific radio button from a group**

```python
radiobuttons = browser.find_elements_by_name("rad")

radiobuttons[1].click()
```
###Navigation
```python
browser.back()
browser.forward()
```
###Waits
These are the various ways you can make the webdriver wait before doing something else

####Sleep

```python
import time

time.sleep(5)
```

####Implicit Wait
Can only be used once, so it will always this amount of time when trying to find every element

```python
browser.implicitly_wait(10)
```

####Explicit Wait

```python
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.common.by import By

WebDriverWait(browser,10).until(EC.element_to_be_clickable((By.PARTIAL_LINK_TEXT,'Melbourne')))
```

element_to_be_clickble is one of many ways to use explicit waits