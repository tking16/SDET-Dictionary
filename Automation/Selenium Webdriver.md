#Selenium Webdriver
>Explain the purpose of Seleniu-Webdriver and the different bindings available for it
Use the Ruby binding to navigate to a page and conduct basic UI automation

##What is Selenium Webdriver?
lets us drive webrowsers
####it can drive...
*Adroid
*Google Chrome
*Firefox
*IE
*Safari
*PhantomJS - headless browser

####It can be scripted with...
-Java
-C#
-Phython
-Ruby
-PHP
-Pearl
-JavaScript

##Selenium and Ruby
`Gem install selenium-webdriver

how to use it

    require 'selenium-webdriver'

    driver = Selenium::WebDriver.for :firefox

    After window has popped up

    driver.get "http://google.com"

*to find an element*

    element = driver.find_element name: "q"

    element.send_keys "Hello!"

    element.submit

*get driver title*

`driver.title

Check the title of the page sstarts with "hello"
`driver.title.downcase.start_with? "hello!" 

*to quit*

`driver.quit

*reset driver*

`driver = nil

###more commands
browser = Selenium::WebDriver.for :firefox

sends you to another browser
browser.navigateto

*get page source*
browser.page_source

browser.page_source.match /Hello/

*execute some javascript*
browser.execute_script "alert('Hello');"

####methods
`browser.manage.methods - Object.new.methods

*finding elements*

    a = browser.find_element({name: "textarea"}) - find the box with the name textarea. You dont need the parenthesis
    a = browser.find_element name: "textarea"
*finding CSS selectors*
browser.find_element css: "ul.navigation li"

*to find something witout a name*

`a = browser.find_element tagname ".pageheader p"

using xpath

a = browser.find_element xpath "//h2[@class='someclass'"

    browser.find_elements tagname: "p" - will return array of all tagnames on page

    browser.find_elements(css: "p").size #getS how many i think
    
**property methods**

lets assume 
`a = browser.find_element name: "searchbox"

    a.size #gets the size

    a.displayed? #is it displayed?

    a.attribute "tabindex"

    a.attribute "type"

    a.attribute "value" #whats inside

    a.selected? #if a certain checkbox has been ticked

    a.submit #can be called on any input element when submitting a form, the equivalent to pressing enter

    wait = Selenium::WebDriver::Wait.new(timeout:51) #wait until a page is fully loaded

    a = wait.until {browser.find_element(tag_name: "h1")}

    options = a.find_elements(tag_name: "option")

    options.each {|o| o.click if o.text == "Choice }
    
##Watir and Capybara

Three kinds of automated web testing APIs

Selenium = Beef
Watir = Mince

####Watir
-Browser API for Selenium
-Nice DSL
-PageObject available
-Built for Ruby
-Industry Standard
-unlike selenium, its built for ruby

