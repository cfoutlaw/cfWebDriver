component
	accessors="true"
	output="false"
{
	public any function init()
		output="false"
	{
		if (!structKeyExists(request, "ieDriver") || isNull(request.ieDriver.getSessionId())) {
			var driver = createObject("java", "org.openqa.selenium.remote.RemoteWebDriver");
			driver.init(getUrl("http://localhost:4444/wd/hub"), getInternetExplorerCapability());
			request.ieDriver = driver;
		}
		return request.ieDriver;
	}
	private any function getUrl(required string address)
		output="false"
	{
		return createObject("java", "java.net.URL").init(arguments.address);
	}
	private any function getInternetExplorerCapability()
		output="false"
	{
		var capability = new cfWebDriver.remote.DesiredCapabilities();
		return capability.internetExplorer();
	}
}
