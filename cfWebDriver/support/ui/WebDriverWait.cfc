component
	output="false"
{
	property name="javaWait" type="any";

	private void function setWait(required any wait)
		output="false"
	{
		variables.javaWait = arguments.wait;
	}
	private any function getWait()
		output="false"
	{
		return variables.javaWait;
	}
	public WebDriverWait function init(required any webDriver, required numeric timeOutInSeconds, numeric sleepInMillis)
		output="false"
	{
		var wait = createObject("java", "org.openqa.selenium.support.ui.WebDriverWait");

		if (structKeyExists(arguments, "sleepInMillis")) {
			wait.init(arguments.webDriver.getDriver(), arguments.timeOutInSeconds, arguments.sleepInMillis);
		} else {
			wait.init(arguments.webDriver.getDriver(), arguments.timeOutInSeconds);
		}
		setWait(wait);
		return this;
	}
	public any function until(required function condition)
		output="false"
	{
		return arguments.condition(getWait());
	}
	public cfWebDriver.support.ui.ExpectedConditions function condition()
		output="false"
	{
		return new cfWebDriver.support.ui.ExpectedConditions();
	}
}