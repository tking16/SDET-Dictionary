#Selenium with Java

###Set up

**In Netbeans**

File >> New Project >> Maven >> Next >> Finish >> New File >> Selenium Tests >> Next >> Finish

*initialise driver*

WebDriver driver = new ChromeDriver();

**Finding an element**

*by name*

`WebElement element = driver.findElement(By.name("searchTextBox"));

*by id*

`WebElement element = driver.findElement(By.id("gsr"));

*by link*

`WebElement element = driver.findElement(By.linkText("Click here for more information"));` - Search for a hyperlink by the text

**Finding multiple elements**

*links*

`List<WebElement> elements = driver.findElements(By.partialLinkText("speed"));` - partialLinkText can be used to find just a word in the link

*HTML tags*

`List<WebElement> listItems = driver.findElements(By.tagName("li"));

*class name*

`List<WebElement> elements = driver.findElements(By.className("hdtb-imb"));

*CSS*

`List<WebElement> elements = driver.findElements(By.cssSelector("a:link"));

*XPath*

`List<WebElement> elements = driver.findElements(By.xpath("//div//a"));

**Iteration example**

        List<WebElement> elements = driver.findElements(By.xpath("//div//a"));
        elements.stream().forEach((e) -> {
            System.out.println(e.getText());
        });
        
^Stream acts just like a for loop and allows you to perform operations on a sequence of elements

####Waits

**Implicit Waits**

`driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);` - import the correct package if you get an error
