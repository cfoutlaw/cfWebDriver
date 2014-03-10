component
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
	public RemoteTargetLocator function init(required any driver)
		output="false"
	{
		setDriver(arguments.driver);
		return this;
	}
	public cfWebDriver.remote.RemoteWebElement function activeElement()
		output="false"
	{
		return new cfWebDriver.remote.RemoteWebElement(getDriver().switchTo().activeElement());
	}
	public void function window(required string windowName)
		output="false"
	{
		getDriver().switchTo().window(arguments.windowName);
	}
	public void function defaultContent()
		output="false"
	{
		getDriver().switchTo().defaultContent();
	}
	public void function frame(required any frame)
		output="false"
	{
		getDriver().switchTo().frame(arguments.frame);
	}
	public cfWebDriver.Alert function alert()
		output="false"
	{
		return new cfWebDriver.Alert(getDriver().switchTo().alert());
	}
}