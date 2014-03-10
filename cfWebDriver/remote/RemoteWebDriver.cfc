component
	extends="cfWebDriver.core.ElementBy"
	output="false"
{
	property name="driver" type="any";

	private void function setDriver(required any driver)
		output="false"
	{
		variables.driver = arguments.driver;
	}
	private any function getDriver()
		output="false"
	{
		return variables.driver;
	}
	public RemoteWebDriver function init()
		output="false"
	{
		return this;
	}
	public void function get(required string address)
		output="false"
	{
		getDriver().get(arguments.address);
	}
	public array function getWindowHandles()
		output="false"
	{
		return getDriver().getWindowHandles().toArray();
	}
	public void function close()
		output="false"
	{
		getDriver().close();
	}
	public any function switchTo()
		output="false"
	{
		return new cfWebDriver.remote.RemoteTargetLocator(getDriver());
	}
	public void function quit()
		output="false"
	{
		getDriver().quit();
	}
	public string function getPageSource()
		output="false"
	{
		return getDriver().getPageSource();
	}
	public string function getTitle()
		output="false"
	{
		return getDriver().getTitle();
	}
	public string function getWindowHandle()
		output="false"
	{
		return getDriver().getWindowHandle();
	}
	public string function toString()
		output="false"
	{
		return getDriver().toString();
	}
	public void function startChrome()
		output="false"
	{
		setDriver(new cfWebDriver.remote.ChromeDriver());
	}
	public void function startInternetExplorer()
		output="false"
	{
		setDriver(new cfWebDriver.remote.InternetExplorerDriver());
	}
	public void function setPosition(required numeric x, required numeric y)
		output="false"
	{
		var point = createObject("java", "org.openqa.selenium.Point").init(arguments.x, arguments.y);
		getDriver().manage().window().setPosition(point);
	}
	public void function setSize(required numeric width, required numeric height)
		output="false"
	{
		var dim = createObject("java", "org.openqa.selenium.Dimension").init(arguments.width, arguments.height);
		getDriver().manage().window().setSize(dim);
	}
	public void function addCookie(required any webCookie)
		output="false"
	{
		getDriver().manage().addCookie(arguments.webCookie);
	}
	public any function getCookieNamed(required string cookieName)
		output="false"
	{
		return getDriver().manage().getCookieNamed(arguments.cookieName);
	}
	public void function deleteCookieNamed(required string cookieName)
		output="false"
	{
		getDriver().manage().deleteCookieNamed(arguments.cookieName);
	}
}
