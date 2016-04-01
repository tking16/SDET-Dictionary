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