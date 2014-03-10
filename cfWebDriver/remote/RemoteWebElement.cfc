component
	extends="cfWebDriver.core.ElementBy"
	output="false"
{
	property name="element" type="any";

	private any function getDriver()
		output="false"
	{
		return getElement();
	}
	private void function setElement(required any element)
		output="false"
	{
		variables.element = arguments.element;
	}
	public any function getElement()
		output="false"
	{
		return variables.element;
	}
	public RemoteWebElement function init(required any element)
		output="false"
	{
		setElement(arguments.element);
		return this;
	}
	public string function getInnerHtml()
		output="false"
	{
		return getAttribute("innerHTML");
	}
	public string function getOuterHtml()
		output="false"
	{
		return getAttribute("outerHTML");
	}
	public string function getValue()
		output="false"
	{
		return getAttribute("value");
	}
	public void function click()
		output="false"
	{
		getElement().click();
	}
	public void function clear()
		output="false"
	{
		getElement().clear();
	}
	public void function jsClear()
		output="false"
	{
		getElement().getWrappedDriver().executeScript("arguments[0].value='';", [getElement()]);
	}
	public void function sendKeys(required string keysToSend)
		output="false"
	{
		getElement().sendKeys(listToArray(arguments.keysToSend, ""));
	}
	public any function getAttribute(required string attributeName)
		output="false"
	{
		return getElement().getAttribute(arguments.attributeName);
	}
	public any function getText()
		output="false"
	{
		return getElement().getText();
	}
	public boolean function isEqualTo(required any object)
		output="false"
	{
	}
	public any function getCoordinates()
		output="false"
	{
		// returns: org.openqa.selenium.interactions.internal.Coordinates
	}
	public string function getCssValue(required string propertyName)
		output="false"
	{
		return getElement().getCssValue(arguments.propertyName);
	}
	public string function getId()
		output="false"
	{
		return getElement().getAttribute("id");
	}
	public any function getLocation()
		output="false"
	{
		// returns: org.openqa.selenium.Point
	}
	public any function getSize()
		output="false"
	{
		// returns: org.openqa.selenium.Dimension
	}
	public string function getTagName()
		output="false"
	{
		return getElement().getTagName();
	}
	public string function getWrappedDriver()
		output="false"
	{
		// returns: org.openqa.selenium.WebDriver
	}
	public numeric function hashCode()
		output="false"
	{
	}
	public boolean function isDisplayed()
		output="false"
	{
	}
	public boolean function isEnabled()
		output="false"
	{
	}
	public boolean function isSelected()
		output="false"
	{
	}
	public void function setFileDetector(required any fileDetector)
		output="false"
	{
		// parameter is org.openqa.selenium.remote.FileDetector
	}
	public void function setId(required string id)
		output="false"
	{
	}
	public void function setParent(required any remoteWebDriver)
		output="false"
	{
		// parameter is org.openqa.selenium.remote.RemoteWebDriver
	}
	public void function submit()
		output="false"
	{
	}
	public string function toString()
		output="false"
	{
		return getOuterHtml();
	}
}