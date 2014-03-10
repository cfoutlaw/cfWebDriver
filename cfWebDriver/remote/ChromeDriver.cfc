component
	accessors="true"
	output="false"
{
	public any function init()
		output="false"
	{
		if (!structKeyExists(request, "chromeDriver") || isNull(request.chromeDriver.getSessionId())) {
			var driver = createObject("java", "org.openqa.selenium.remote.RemoteWebDriver");
			driver.init(getUrl("http://localhost:4444/wd/hub"), getChromeCapability());
			request.chromeDriver = driver;
		}
		return request.chromeDriver;
	}
	private any function getUrl(required string address)
		output="false"
	{
		return createObject("java", "java.net.URL").init(arguments.address);
	}
	private any function getChromeCapability()
		output="false"
	{
		var capability = new cfWebDriver.remote.DesiredCapabilities();
		return capability.chrome();
	}
}
