#Selenium with Csharp

###Set up

**In Visual Studio 2015**

New Project >> Test(under visual c#) >> Unit Test Project

*Driver init*

`IWebDriver browser = new FirefoxDriver();`

**Find an element**

`IWebElement search = browser.FindElement(By.Name("q"));`

instead of searching by name, you can also search by: 

* id
* className
* PartialLinkText
* cssSelector
* LinkText
* XPath
* TagName

**Finding multiple elements**

```C#
ReadOnlyCollection<IWebElement> links = browser.FindElements(By.PartialLinkText("test"));
foreach (IWebElement link in links)
{
    Debug.WriteLine("//////////////////////////////////////////////////////////////////////////////////////////");
    Debug.WriteLine(link.Text);
}
```

###Waits

`browser.Manage().Timeouts().ImplicitlyWait(TimeSpan.FromSeconds(5));`

###Asserts

>This example is assuming you have inputted "test" as a Google search

```C#
string expectedText = "Speedtest.net by Ookla - The Global Broadband Speed Test";
ReadOnlyCollection<IWebElement> links = browser.FindElements(By.PartialLinkText("test"));
Assert.AreEqual(expectedText, links[0].Text);
```

Check if an element is visibile via CSS

`Assert.AreEqual("none", h1.GetCssValue("display"));`

###Checkboxes

```C#
browser.Navigate().GoToUrl("https://www.copdfoundation.org/Take-Action/Help-Find-a-Cure/Breathe-Strong-March.aspx");
IWebElement check = browser.FindElement(By.Id("dnn_ctr1758_Form_ctrlDigFieldLeader"));
check.Click();
```


###Navigation

browser.Navigate().Back
browser.Navigate().Forward
