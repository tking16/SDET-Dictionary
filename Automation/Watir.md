#Using Watir

##Installing Watir

###Watir

- Browser API for Selenium - returns selenium objects
- Nice DSL (domain specific language)
- PageObject availble
- Built for Ruby
- Industry Standard

**Watir Information \n
rdoc.info

###setup

    require 'watir'

    browser = Watir::Browser.new

    browser.goto "google.com"

#####Browser Functions

    browser.back

    browser.forward

    browser.refresh

    browser.stop

    browser.title

    browser.html

    browser.status #returns information from the status bar

    browser.text #gets back a string of all the text on the page with all the html stripped out

    browser.text.include? 'Hello'

    browser.driver # gets back the driver

    browser.driver.find_element

    browser.p #returns an object

    browser.p.text 

    browser.ps gets all the paragraphs

    browser.ps[2] #gets the third paragraph

    browser.ps.to_a #converts paragraphs to an array

####RegExp

    browser.lis id: \^foo.*\ #pass a RegExp that looks for any list item that begins with `foo` and has anything else after it

    browser.lis class: /^qa-.*/
    
####Text fields
    
    browser.text_field #returns th first form of text field it can find

    browser.text_field name: 'username'

    tf = browser.text_field name: 'name'

    tf.flash # make the textfield flash using CSS

    tf.set "Hello" # Set the text in the text field
  >set behaves like send_keys but set is only available on textfield types

    tf.value

    tf.id # get the id

    tf.name # get the name

    tf.tab_index # gives the tab_index as an integer

####Boolean opererators

    tf.exists? #if the item exists in the html

    tf.visible?

    tf.present? #if the item exists on the page

    tf.readonly?

    tf.disabled?

####Buttons

    b = browser.button :text, "A Button" # sets `b` according to the button with text 'A Button'
  >The problem with matching with text is you have to change it for multiple languages. Better to use classes and id's

    b.flash

    b.text # gets buttons text

    b.type #returns its type

    b.click

    *waiting*

    b.when_present.click #wait until b has appeared then click it

####checkboxes

    cb = browser.checkbox id: 'checkbox'

    cb.set #will tick the checkbox

    cb.clear #will untick the checkbox

**also available on radio buttons**

####dropdown boxes

    d = browser.select_list :name "select_choice"

    d.select 'Choice 3'

    d.value #currently selected value

    d.text #will show all the options inside

####Navigation

say we wanted to find a link called articles...

    browser.a # gets the first link

    browser.a text: 'Articles' #One method to find the link

    link = browser.a href: '/writing/articles'

    browser.a(text: "About").click #simplest way to navigate links

####tables

    table = browser.table #gets the first table

    table[0] #gets the row

    table[4][2].text #gets the text in the 4th row, 2nd cell

####CSS

    browser.element css: ".foo" #get first element of class foo

    browser.elements css: ".foo" #get all elements of class foo

    browser.element(css: ".page-header > li").html

####advanced

    btns = browser.buttons # collection of buttons

    btns.size #amount of buttons

    btns.each {|b| puts b.value} #printing out each value of the buttons in collection

    **chaining things together**

    ph = browser.header class: 'page-header' #get an entire header

    ph.text #all text in header

    ph.nav.ui.lis.last #get the last list item

    ph.nav.ul.lis.last.a.href #get the link of the last list item

**implicit waits**

    browser.driver.manage.timeouts

    browser.driver.manage.timeouts.implicit_wait = 3 #wait 3 seconds before it does stuff

    *explicit waits*

    browser.text_field(id: 'entry_100000').wait_until_present #wait until the element has appeared

    browser.text_field(id: 'entry_100000').when_present.set "foo" #set foo only when the field is present

    Watir::Wait.until do 
      browser.text.include? 'Thank You'
    end

**efficiency**

    browser = Watir::Browser.start 'bit.ly/watir-webdriver-demo' #begins watir with the address straight away.

A good automation guy needs to use intelligent waits