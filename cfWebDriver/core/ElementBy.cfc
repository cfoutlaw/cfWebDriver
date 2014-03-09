component
	output="false"
{
	private cfWebDriver.By function by()
		output="false"
	{
		return new cfWebDriver.By();
	}
	public cfWebDriver.remote.RemoteWebElement function findElement(required any by)
		output="false"
	{
		return new cfWebDriver.remote.RemoteWebElement(getDriver().findElement(arguments.by));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByClassName(required string className)
		output="false"
	{
		return findElement(by().className(arguments.className));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByCssSelector(required string selector)
		output="false"
	{
		return findElement(by().cssSelector(arguments.selector));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementById(required string id)
		output="false"
	{
		return findElement(by().id(arguments.id));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByLinkText(required string linkText)
		output="false"
	{
		return findElement(by().linkText(arguments.linkText));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByName(required string name)
		output="false"
	{
		return findElement(by().name(arguments.name));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByPartialLinkText(required string linkText)
		output="false"
	{
		return findElement(by().partialLinkText(arguments.linkText));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByTagName(required string tagName)
		output="false"
	{
		return findElement(by().tagName(arguments.tagName));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByXPath(required string xpath)
		output="false"
	{
		return findElement(by().xpath(arguments.xpath));
	}
	public array function findElements(required any by)
		output="false"
	{
		var elements = [];
		var webElements = getDriver().findElements(arguments.by);
		for (var i=1;i<=arrayLen(webElements);i++) {
			arrayAppend(elements, new cfWebDriver.remote.RemoteWebElement(webElements[i]));
		}
		return elements;
	}
	public array function findElementsByClassName(required string className)
		output="false"
	{
		return findElements(by().className(arguments.className));
	}
	public array function findElementsByCssSelector(required string selector)
		output="false"
	{
		return findElements(by().className(arguments.className));
	}
	public array function findElementsById(required string id)
		output="false"
	{
		return findElements(by().className(arguments.className));
	}
	public array function findElementsByLinkText(required string linkText)
		output="false"
	{
		return findElements(by().className(arguments.className));
	}
	public array function findElementsByName(required string name)
		output="false"
	{
		return findElements(by().className(arguments.className));
	}
	public array function findElementsByPartialLinkText(required string linkText)
		output="false"
	{
		return findElements(by().className(arguments.className));
	}
	public array function findElementsByTagName(required string tagName)
		output="false"
	{
		return findElements(by().className(arguments.className));
	}
	public array function findElementsByXPath(required string xPath)
		output="false"
	{
		return findElements(by().className(arguments.className));
	}
}