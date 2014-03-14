component
	output="false"
{
	private cfWebDriver.By function getBy()
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
		return findElement(getBy().className(arguments.className));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByCssSelector(required string selector)
		output="false"
	{
		return findElement(getBy().cssSelector(arguments.selector));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementById(required string id)
		output="false"
	{
		return findElement(getBy().id(arguments.id));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByLinkText(required string linkText)
		output="false"
	{
		return findElement(getBy().linkText(arguments.linkText));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByName(required string name)
		output="false"
	{
		return findElement(getBy().name(arguments.name));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByPartialLinkText(required string linkText)
		output="false"
	{
		return findElement(getBy().partialLinkText(arguments.linkText));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByTagName(required string tagName)
		output="false"
	{
		return findElement(getBy().tagName(arguments.tagName));
	}
	public cfWebDriver.remote.RemoteWebElement function findElementByXPath(required string xpath)
		output="false"
	{
		return findElement(getBy().xpath(arguments.xpath));
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
		return findElements(getBy().className(arguments.className));
	}
	public array function findElementsByCssSelector(required string selector)
		output="false"
	{
		return findElements(getBy().cssSelector(arguments.selector));
	}
	public array function findElementsById(required string id)
		output="false"
	{
		return findElements(getBy().id(arguments.id));
	}
	public array function findElementsByLinkText(required string linkText)
		output="false"
	{
		return findElements(getBy().linkText(arguments.linkText));
	}
	public array function findElementsByName(required string name)
		output="false"
	{
		return findElements(getBy().name(arguments.name));
	}
	public array function findElementsByPartialLinkText(required string linkText)
		output="false"
	{
		return findElements(getBy().partialLinkText(arguments.linkText));
	}
	public array function findElementsByTagName(required string tagName)
		output="false"
	{
		return findElements(getBy().tagName(arguments.tagName));
	}
	public array function findElementsByXPath(required string xpath)
		output="false"
	{
		return findElements(getBy().xPath(arguments.xpath));
	}
}