#RSpec
>Explain how RSpec can be used to write unit tests
Use RSpec to drive a WebDriver
Use RSpec to test a RESTful API

**reading list: The RSPec Book**

##Testing a REST API
Crud

    gem install httparty
tests to carry out:

- does data exists
- send JSON request expecting it to be empty
- pre conditions>>tests we need to do

delete two todos>>create todos>>teardown>>

#using httparty


    require 'httparty'
    r = HTTPARTY.get"http://lacedeamon.spartaglobal.com/todos"
    r.code #get status code
    r.message # get the status object
    r.headers #get headers
    r[0] will get a particular element as a hash
    r[0][title] # if you want the title of the first element
    r[-1] #get the last element

####methods

    r.each

>example

    r.each {|i| puts #{r[title]}}
    r.to_hash #ensures its a hash
    r["created_at"].class

- altough when you get items they may look like a hash but they are not

####updating

    r = HTTParty.put 'http://lacedeamon.spartaglobal.com/todos'
    r= HTTParty.get 'http://lacedeamon.spartaglobal.com/todos/2212', query: {title:"do someting", due "2011-01-01"} #how to pass data down the body

####creating

    r = HTTPart.post 'http://lacedeamon.spartaglobal.com/todos', query: {title: "hi"}

    further reading https://github.com/jnunemaker/httparty

##running tests with RSpec
example file has been created